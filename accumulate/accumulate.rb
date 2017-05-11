module BookKeeping
  VERSION = 1
end

class Array
  def accumulate(&block)
    self.collect(&block)
  end
end
