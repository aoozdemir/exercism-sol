module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(num)
    drop = ""

    drop += "Pling" if num.%(3).zero?
    drop += "Plang" if num.%(5).zero?
    drop += "Plong" if num.%(7).zero?

    !drop.empty? ? drop : num.to_s
  end
end
