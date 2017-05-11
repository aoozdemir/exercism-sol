class SumOfMultiples
  def initialize(*args)
    @args = args
  end

  def to(n)
    [*1...n].keep_if do |e|
      @args.any? do |arg|
        e.%(arg).zero?
      end
    end.inject(0, :+)
  end
end
