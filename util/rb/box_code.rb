class BoxCode
  INDENT = '    '.freeze

  attr_reader :words

  def initialize(str)
    @words = str.strip.gsub(/\W/, '').split_group(8)
  end

  def pkglitzer(indent=0)
    self.words
      .map { |word| word.split_group(2).join(' ') }
      .in_groups_of(2)
      .map { |line| "#{INDENT * indent}#{line.join('   ')}" }
      .join("\n")
  end

  def code(indent=0, old=false)
    sig_words = self.words.dup

    loop do
      last = sig_words.pop

      if last != '00000000'
        sig_words.push(last)
        break
      end
    end

    num_sig_words = sig_words.length

    if old
      if num_sig_words > 14
        if num_sig_words % 2 != 0
          sig_words.push('00000000')
          num_sig_words += 1
        end

        pivot = num_sig_words / 2

        lines_1 = self.build_box_code(sig_words[...pivot], indent, 1)
        lines_2 = self.build_box_code(sig_words[pivot.. ], indent, 2)

        lines = [*lines_1, '', *lines_2]
      else
        lines = self.build_box_code(sig_words, indent)
      end
    else
      if num_sig_words > 14
        (20 - num_sig_words).times { sig_words.push('00000000') }

        lines_1 = self.build_box_code(sig_words[...14], indent, 1)
        lines_2 = self.build_box_code(sig_words[14...], indent, 2)

        lines = [*lines_1, '', *lines_2]
      else
        (14 - num_sig_words).times { sig_words.push('00000000') }

        lines = self.build_box_code(sig_words, indent)
      end
    end

    lines.join("\n")
  end

  def self.code_64(str)
    str.gsub!('=', '')
    str.gsub!('+', '!')
    str.gsub!('/', '?')

    loop do
      break if str.length >= 112

      str += 'A'
    end

    lines = str.split_group(8).each_with_index.map do |word, index|
      index += 1

      box_name = "Box #{index.to_s.rjust(2, ' ')}"
      word = word.split_group(2).join(' ')

      "#{box_name}: #{word}"
    end

    lines.join("\n")
  end

  protected

  def build_box_code(words, indent, idx=nil)
    indent = INDENT * indent

    lines = words.each_with_index.map do |word, index|
      index += 1

      box_name = "Box #{index.to_s.rjust(2, ' ')}"
      word = word.split_group(2).join(' ')

      "#{indent}#{box_name}: #{word}"
    end

    lines.unshift("#{indent}; Box code #{idx}") unless idx.nil?
    lines
  end
end
