class Array
  def in_groups_of(number, fill_with = nil, &block)
    if number.to_i <= 0
      msg = "Group size must be a positive integer, was #{number.inspect}"

      raise ArgumentError, msg
    end

    if fill_with == false
      collection = self
    else
      padding = (number - size % number) % number
      collection = dup.concat(Array.new(padding, fill_with))
    end

    if block_given?
      collection.each_slice(number, &block)
    else
      collection.each_slice(number).to_a
    end
  end

  def space
    self.join(' ')
  end
end


class Integer
  def to_u32
    self & 0xFFFFFFFF
  end

  def to_u16
    self & 0xFFFF
  end

  def to_bin(width=8)
    self.to_s(2).rjust(width, '0')
  end

  def to_hex(width=2)
    self.to_s(16).upcase.rjust(width, '0')
  end

  def to_be(width=4)
    self.to_hex(width).split('').in_groups_of(2).map(&:join)
  end

  def to_le(width=4)
    self.to_be(width).reverse
  end

  def nature
    idx = self % 25

    PkData::NATURES[idx]
  end

  def substructure_order
    idx = self % 24

    PkData::SUBSTRUCTURE_ORDERS[idx]
  end

  def ability
    self.even? ? :primary : :secondary
  end

  def genders
    PkData::GENDER_RATIOS.transform_values do |threshhold|
      p_gender = self & 0xFF

      p_gender >= threshhold ? :male : :female
    end
  end
end

class String
  def from_bin
    self.to_i(2)
  end

  def from_hex
    self.to_i(16)
  end

  def from_hex_rev
    self.bytes_rev.from_hex
  end

  def bytes_rev
    self.split('').in_groups_of(2).map(&:join).reverse.join
  end

  def split_group(n)
    self.split('').in_groups_of(n).map(&:join)
  end
end
