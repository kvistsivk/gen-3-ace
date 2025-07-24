require './addr'
require './arm'
require './box_code'
require './charset'
require './core_ext'
require './pk_data'

def copy_to_clipboard(str)
  IO.popen('pbcopy', 'w') { |io| io << str }

  puts str
end

def th(offset, cond = nil)
  b = Thumb.b(offset, cond)

  copy_to_clipboard(b)
end

def trans(str)
  str = Charset::EN.from_str(str).in_groups_of(4).map(&:join).join("\n")

  copy_to_clipboard(str)
end

def bc(str, old=true)
  box_code = BoxCode.new(str).code(0, old)

  copy_to_clipboard(box_code)
end

def bc64(str)
  box_code = BoxCode.code_64(str)

  copy_to_clipboard(box_code)
end


def ss(word)
  word.from_hex_rev.substructure_order
end

def ts(lo)
  (0..2).map { |x| ss("#{lo}#{x.to_le(4).join}") }
end

def ul(pid)
  pid = pid.from_hex_rev if pid.is_a?(String)
  ltr = pid & 0x00000003

  ltr ^= ((pid & 0x00000300) >> 6)
  ltr ^= ((pid & 0x00030000) >> 12)
  ltr ^= ((pid & 0x03000000) >> 18)

  ltr %= 28

  case ltr
  when 27
    '?'
  when 26
    '!'
  else
    (ltr + 65).chr
  end
end
