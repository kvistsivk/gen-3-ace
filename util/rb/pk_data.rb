module PkData
  ITEMS = {
    master_ball:    0x0001, ultra_ball:     0x0002, great_ball:     0x0003, poke_ball:      0x0004,
    safari_ball:    0x0005, net_ball:       0x0006, dive_ball:      0x0007, nest_ball:      0x0008,
    repeat_ball:    0x0009, timer_ball:     0x000A, luxury_ball:    0x000B, premier_ball:   0x000C,
    potion:         0x000D, antidote:       0x000E, burn_heal:      0x000F, ice_heal:       0x0010,
    awakening:      0x0011, parlyz_heal:    0x0012, full_restore:   0x0013, max_potion:     0x0014,
    hyper_potion:   0x0015, super_potion:   0x0016, full_heal:      0x0017, revive:         0x0018,
    max_revive:     0x0019, fresh_water:    0x001A, soda_pop:       0x001B, lemonade:       0x001C,
    moomoo_milk:    0x001D, energypowder:   0x001E, energy_root:    0x001F, heal_powder:    0x0020,
    revival_herb:   0x0021, ether:          0x0022, max_ether:      0x0023, elixir:         0x0024,
    max_elixir:     0x0025, lava_cookie:    0x0026, blue_flute:     0x0027, yellow_flute:   0x0028,
    red_flute:      0x0029, black_flute:    0x002A, white_flute:    0x002B, berry_juice:    0x002C,
    sacred_ash:     0x002D, shoal_salt:     0x002E, shoal_shell:    0x002F, red_shard:      0x0030,
    blue_shard:     0x0031, yellow_shard:   0x0032, green_shard:    0x0033, hp_up:          0x003F,
    protein:        0x0040, iron:           0x0041, carbos:         0x0042, calcium:        0x0043,
    rare_candy:     0x0044, pp_up:          0x0045, zinc:           0x0046, pp_max:         0x0047,
    guard_spec:     0x0049, dire_hit:       0x004A, x_attack:       0x004B, x_defend:       0x004C,
    x_speed:        0x004D, x_accuracy:     0x004E, x_special:      0x004F, poke_doll:      0x0050,
    fluffy_tail:    0x0051, super_repel:    0x0053, max_repel:      0x0054, escape_rope:    0x0055,
    repel:          0x0056, sun_stone:      0x005D, moon_stone:     0x005E, fire_stone:     0x005F,
    thunderstone:   0x0060, water_stone:    0x0061, leaf_stone:     0x0062, tiny_mushroom:  0x0067,
    big_mushroom:   0x0068, pearl:          0x006A, big_pearl:      0x006B, stardust:       0x006C,
    star_piece:     0x006D, nugget:         0x006E, heart_scale:    0x006F, orange_mail:    0x0079,
    harbor_mail:    0x007A, glitter_mail:   0x007B, mech_mail:      0x007C, wood_mail:      0x007D,
    wave_mail:      0x007E, bead_mail:      0x007F, shadow_mail:    0x0080, tropic_mail:    0x0081,
    dream_mail:     0x0082, fab_mail:       0x0083, retro_mail:     0x0084, cheri_berry:    0x0085,
    chesto_berry:   0x0086, pecha_berry:    0x0087, rawst_berry:    0x0088, aspear_berry:   0x0089,
    leppa_berry:    0x008A, oran_berry:     0x008B, persim_berry:   0x008C, lum_berry:      0x008D,
    sitrus_berry:   0x008E, figy_berry:     0x008F, wiki_berry:     0x0090, mago_berry:     0x0091,
    aguav_berry:    0x0092, iapapa_berry:   0x0093, razz_berry:     0x0094, bluk_berry:     0x0095,
    nanab_berry:    0x0096, wepear_berry:   0x0097, pinap_berry:    0x0098, pomeg_berry:    0x0099,
    kelpsy_berry:   0x009A, qualot_berry:   0x009B, hondew_berry:   0x009C, grepa_berry:    0x009D,
    tamato_berry:   0x009E, cornn_berry:    0x009F, magost_berry:   0x00A0, rabuta_berry:   0x00A1,
    nomel_berry:    0x00A2, spelon_berry:   0x00A3, pamtre_berry:   0x00A4, watmel_berry:   0x00A5,
    durin_berry:    0x00A6, belue_berry:    0x00A7, liechi_berry:   0x00A8, ganlon_berry:   0x00A9,
    salac_berry:    0x00AA, petaya_berry:   0x00AB, apicot_berry:   0x00AC, lansat_berry:   0x00AD,
    starf_berry:    0x00AE, enigma_berry:   0x00AF, bright_powder:  0x00B3, white_herb:     0x00B4,
    macho_brace:    0x00B5, exp_share:      0x00B6, quick_claw:     0x00B7, soothe_bell:    0x00B8,
    mental_herb:    0x00B9, choice_band:    0x00BA, kings_rock:     0x00BB, silver_powder:  0x00BC,
    amulet_coin:    0x00BD, cleanse_tag:    0x00BE, soul_dew:       0x00BF, deep_sea_tooth: 0x00C0,
    deep_sea_scale: 0x00C1, smoke_ball:     0x00C2, everstone:      0x00C3, focus_band:     0x00C4,
    lucky_egg:      0x00C5, scope_lens:     0x00C6, metal_coat:     0x00C7, leftovers:      0x00C8,
    dragon_scale:   0x00C9, light_ball:     0x00CA, soft_sand:      0x00CB, hard_stone:     0x00CC,
    miracle_seed:   0x00CD, black_glasses:  0x00CE, black_belt:     0x00CF, magnet:         0x00D0,
    mystic_water:   0x00D1, sharp_beak:     0x00D2, poison_barb:    0x00D3, never_melt_ice: 0x00D4,
    spell_tag:      0x00D5, twisted_spoon:  0x00D6, charcoal:       0x00D7, dragon_fang:    0x00D8,
    silk_scarf:     0x00D9, up_grade:       0x00DA, shell_bell:     0x00DB, sea_incense:    0x00DC,
    lax_incense:    0x00DD, lucky_punch:    0x00DE, metal_powder:   0x00DF, thick_club:     0x00E0,
    stick:          0x00E1, red_scarf:      0x00FE, blue_scarf:     0x00FF, pink_scarf:     0x0100,
    green_scarf:    0x0101, yellow_scarf:   0x0102, tm01:           0x0121, tm02:           0x0122,
    tm03:           0x0123, tm04:           0x0124, tm05:           0x0125, tm06:           0x0126,
    tm07:           0x0127, tm08:           0x0128, tm09:           0x0129, tm10:           0x012A,
    tm11:           0x012B, tm12:           0x012C, tm13:           0x012D, tm14:           0x012E,
    tm15:           0x012F, tm16:           0x0130, tm17:           0x0131, tm18:           0x0132,
    tm19:           0x0133, tm20:           0x0134, tm21:           0x0135, tm22:           0x0136,
    tm23:           0x0137, tm24:           0x0138, tm25:           0x0139, tm26:           0x013A,
    tm27:           0x013B, tm28:           0x013C, tm29:           0x013D, tm30:           0x013E,
    tm31:           0x013F, tm32:           0x0140, tm33:           0x0141, tm34:           0x0142,
    tm35:           0x0143, tm36:           0x0144, tm37:           0x0145, tm38:           0x0146,
    tm39:           0x0147, tm40:           0x0148, tm41:           0x0149, tm42:           0x014A,
    tm43:           0x014B, tm44:           0x014C, tm45:           0x014D, tm46:           0x014E,
    tm47:           0x014F, tm48:           0x0150, tm49:           0x0151, tm50:           0x0152,
  }

  GENDERS = {
    male:   0x00,
    female: 0x01,
  }.freeze

  GENDER_RATIOS = {
    male_7:   0b0001_1111,
    male_3:   0b0011_1111,
    even:     0b0111_1111,
    female_3: 0b1011_1111,
    female_7: 0b1110_0000,
  }.freeze

  BALL_TYPES = {
    master:   0x01,
    ultra:    0x02,
    great:    0x03,
    standard: 0x04,
    safari:   0x05,
    net:      0x06,
    dive:     0x07,
    nest:     0x08,
    repeat:   0x09,
    timer:    0x0A,
    luxury:   0x0B,
    premier:  0x0C,
  }.freeze

  GAMES = {
    sapphire:   0x01,
    ruby:       0x02,
    emerald:    0x03,
    fire_red:   0x04,
    leaf_green: 0x05,
    gamecube:   0x0F,
  }.freeze

  SUBSTRUCTURE_ORDERS = %i[
    gaem game geam gema gmae gmea
    agem agme aegm aemg amge ameg
    egam egma eagm eamg emga emag
    mgae mgea mage maeg mega meag
  ].freeze

  NATURES = %i[
    hardy   lonely  brave   adamant naughty
    bold    docile  relaxed impish  lax
    timid   hasty   serious jolly   naive
    modest  mild    quiet   bashful rash
    calm    gentle  sassy   careful quirky
  ].freeze
end
