class Lcg
  ADD     = 0x00006073
  MUL     = 0x41C64E6D
  INV_MUL = 0xEEB9EB65

  def initialize(seed)
    @seed = seed
    @state = seed
  end

  def next_u32
    self.advance(ADD, MUL)

    @state
  end

  def next_u16
    self.next_u32 >> 16
  end

  def jump(advances)
    jump_add = ADD
    jump_mul = MUL

    (0..32).each do |idx|
      if (advances & (1 << idx)) > 0
        self.advance(jump_add, jump_mul)
      end

      jump_add = (jump_add * (jump_mul + 1).to_u32).to_u32
      jump_mul = (jump_mul ** 2).to_u32
    end
  end

  protected

  def advance(add, mul)
    @state *= mul
    @state += add
    @state = @state.to_u32
  end
end
