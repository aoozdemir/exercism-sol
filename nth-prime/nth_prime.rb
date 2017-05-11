module BookKeeping
  VERSION = 1
end

class Prime
  attr_reader :primes

  def self.nth(i)
    raise ArgumentError if i.zero?

    primes ||= [2, 3]
    cand = primes.last

    while i > primes.length
      cand += 2
      primes << cand unless primes.any? { |prime| cand.%(prime).zero? }
    end

    primes[i-1]
  end
end
