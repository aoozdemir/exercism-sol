class Series
  def initialize(number)
    @number = number
  end

  def slices(part)
    raise ArgumentError if part > @number.length
    @number.chars.collect(&:to_i).each_cons(part).to_a
  end
end
