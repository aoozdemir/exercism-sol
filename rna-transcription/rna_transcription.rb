module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(nucls)
    nucls.scan(/[^ATGC]/).empty? ? nucls.tr("ATGC", "UACG") : ""
  end
end
