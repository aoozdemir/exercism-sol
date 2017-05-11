module BookKeeping
  VERSION = 1
end

class Sieve
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def primes
    si = [nil, nil, *2..@num]

    (2..Math.sqrt(@num)).each do |n|
      (n**2..@num).step(n) do |m|
        si[m] = nil
      end
    end

    si.compact
  end
end
