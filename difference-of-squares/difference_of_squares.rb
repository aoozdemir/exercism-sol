module BookKeeping
  VERSION = 3
end

class Squares
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def square_of_sum
    (0..@num).inject(:+)**2
  end

  def sum_of_squares
    (0..@num).map { |x| x**2 }.inject(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
