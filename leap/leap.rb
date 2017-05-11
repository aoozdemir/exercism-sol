module BookKeeping
  VERSION = 2
end

class Year
  def self.leap?(y)
    (y.modulo(4).zero? && !y.modulo(100).zero?) || y.modulo(400).zero?
  end
end
