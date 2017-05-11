module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(x, y)
    count = 0
    unless x.length == y.length
      raise ArgumentError.new("Strands' lengths are not equal.")
    end

    x.split(//).each_with_index do |letter, i|
      count += 1 if x.split(//)[i] != y.split(//)[i]
    end

    count
  end
end


=begin
  Alternate solution.

    class Hamming
      def self.compute(first, second)
        raise ArgumentError if first.length != second.length
        first.chars.zip(second.chars).count { |tuple| tuple[0] != tuple[1] }
      end
    end
=end
