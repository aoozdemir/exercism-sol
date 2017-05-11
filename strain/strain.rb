class Array
  def keep(&block)
    self.each_with_object([]) do |e, arr|
      arr << e if block.call(e)
    end
  end

  def discard(&block)
    self.each_with_object([]) do |e, arr|
      arr << e unless block.call(e)
    end
  end
end
