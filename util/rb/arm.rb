module Cond
  ALL = [
    EQ = 0x00,
    NE = 0x01,
    HS = 0x02,
    LO = 0x03,
    MI = 0x04,
    PL = 0x05,
    VS = 0x06,
    VC = 0x07,
    HI = 0x08,
    LS = 0x09,
    GE = 0x0A,
    LT = 0x0B,
    GT = 0x0C,
    LE = 0x0D,
    AL = 0x0E,
    NV = 0x0F,

    CS = HS,
    CC = LO,
  ].freeze
end

module Thumb
  def self.b(offset, cond = nil)
    if cond && cond != Cond::AL
      if offset > 127 || offset < -128
        raise ArgumentError.new('offset must be a signed 8-bit integer')
      end

      arr = ['1101']
      arr << cond.to_s(2).rjust(4, '0')
      arr << [offset].pack('C').unpack('C')[0].to_s(2).rjust(8, '0')

      arr.join.to_i(2).to_le(4).join
    else
      if offset > 1023 || offset < -1024
        raise ArgumentError.new('offset must be a signed 11-bit integer')
      end

      if offset < 0
        offset = [offset].pack('S').unpack('S').first.to_s(2)[-11..]
      else
        offset = [offset].pack('S').unpack('S').first.to_s(2).rjust(11, '0')
      end

      ['11100', offset].join.to_i(2).to_le(4).join
    end
  end

  def self.bl(offset)
    if offset > 2097151 || offset < -2097152
      raise ArgumentError.new('offset must be a signed 22-bit integer')
    end

    if offset < 0
      offset = [offset].pack('L').unpack('L').first.to_s(2)[-22..]
    else
      offset = [offset].pack('L').unpack('L').first.to_s(2).rjust(22, '0')
    end

    hi, lo = offset.split('').in_groups_of(11).map(&:join)

    ['11111', lo, '11110', hi].join.to_i(2).to_le(8).join
  end

  def self.ldr_const(register, lhs, rhs)
    a, b = lhs
    c, d = rhs

    immed = self.ldr_const_aux(a, b, c, d)

    if immed < 0
      immed = [immed].pack('C').unpack('C').first.to_s(2)[-8..]
    else
      immed = [immed].pack('C').unpack('C').first.to_s(2).rjust(8, '0')
    end

    ['01001', register.to_bin(3), immed].join.to_i(2).to_le(4).join
  end

  def self.adr(register, immed)
    ['10100', register.to_bin(3), immed.to_bin(8)].join.to_i(2).to_le(4).join
  end

  def self.nops
    lo = []
    hi = []

    (0..7).each do |n|
      bits = n.to_bin(3)

      lo << "0100011000#{bits}#{bits}"
      hi << "0100011011#{bits}#{bits}"
    end

    (lo + hi).map { |s| s.from_bin.to_le(4).join }
  end

  protected

  def self.ldr_const_aux(lhs_slot, lhs_word, rhs_slot, rhs_word)
    slot_diff = rhs_slot - lhs_slot
    word_diff = rhs_word - lhs_word - 1

    slot_diff * 20 + word_diff
  end
end

module Arm
  def self.branch(offset, cond: Cond::AL, link: true)
    if offset > 8388607 || offset < -8388608
      raise ArgumentError.new('offset must be a signed 24-bit integer')
    end

    arr = []

    arr << cond.to_s(2).rjust(4, '0')
    arr << '101'
    arr << (link ? '1' : '0')

    if offset < 0
      arr << [offset].pack('L').unpack('L').first.to_s(2)[-24..]
    else
      arr << [offset].pack('L').unpack('L').first.to_s(2).rjust(24, '0')
    end

    arr.join.to_i(2).to_le(8).join
  end
end
