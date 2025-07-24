module Addr
  SAVE_BLOCK_1    = 0x02025A00
  SAVE_BLOCK_2    = 0x02024A54
  POKEMON_STORAGE = 0x02029808

  def self.box_slot(box, slot)
    idx = box * 30 + slot

    POKEMON_STORAGE + idx * 80 + 4
  end

  def self.box_name(box)
    POKEMON_STORAGE + 33604 + box * 9
  end
end
