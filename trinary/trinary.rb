module BookKeeping
  VERSION = 1
end

class Trinary
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def to_decimal
    result = 0
    @num.reverse.split('').each_index do |i|
      result += @num.reverse[i].to_i * 3 ** i
    end
    return 0 if @num =~ /[^0-2]/
    result
  end
end
