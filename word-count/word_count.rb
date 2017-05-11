module BookKeeping
  VERSION = 1
end

class Phrase
  attr_reader :line

  def initialize(line)
    @line_arr = apply_cond(line)
  end

  def word_count
    @line_arr.each_with_object(Hash.new(0)) { |word,counts|
      counts[word] += 1
    }
  end

  private
  def apply_cond(str)
    str.downcase.gsub(/[^0-9a-z']/i, ' ').split(' ').reject(&:empty?).each {
      # this is for strings start & end with extra quotes. "'large'" etc.
      |w| w.gsub!(/\A'(.*)'\Z/m, '\1')
    }
  end
end
