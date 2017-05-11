module BookKeeping
  VERSION = 3
end

class Pangram
  def self.pangram?(line)
    # bugfry's solution. http://exercism.io/submissions/814adc2f97a245ff800eb1582f85cf96
    ('a'..'z').all?(&(line.downcase.method("include?")))
  end
end
