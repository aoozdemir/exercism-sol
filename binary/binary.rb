module BookKeeping
  VERSION = 3
end

class String
  def tr_from_bin
    num = 0
    self.reverse.split('').each_index do |i|
      num += self.reverse[i].to_i * (2**i)
    end
    num
  end
end

class Binary
  def self.to_decimal(s)
    raise ArgumentError if s =~ /[^0-1]/
    s.tr_from_bin
  end
end
