module BookKeeping
  VERSION = 2
end

class Robot
  attr_reader :name

  LETTERS = *('A'..'Z').freeze
  private_constant :LETTERS

  def initialize
    @name = generate
  end

  def reset
    initialize
  end

  private
  def generate
    name = '%s%s%03d' % [LETTERS.sample, LETTERS.sample, rand(100)]
    ObjectSpace.each_object(self.class).to_a.map { |r| r.name }.include?(name) ? generate : name
  end
end
