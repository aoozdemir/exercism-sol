class PrimeFactors
  def self.for(n)
    arr = []
    d = 2

    while n > 1
      while n % d == 0
        arr << d
        n /= d
      end
      d += 1
    end

    arr
  end
end
