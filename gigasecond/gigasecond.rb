module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from(day)
    day + 1_000_000_000
  end
end
