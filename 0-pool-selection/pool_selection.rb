class Fruit
  attr_reader :name, :weight
  attr_accessor :count, :prob

  def initialize(name, weight)
    @name = name
    @weight = weight
    @count = 0
    @prob = 0.0
  end
end

def pick(list)
  index = 0
  r = rand(0.0...1.0);
  while r > 0
    r = r - list[index].prob
    index += 1 if r > 0
  end
  list[index]
end

fruits = []
sum = 0.0
iteration = 1_000_000

fruits << mango = Fruit.new("mango", 5)
fruits << apple = Fruit.new("apple", 3)
fruits << cherry = Fruit.new("cherry", 2)
fruits << banana = Fruit.new("banana", 1)
fruits << melon = Fruit.new("melon", 8)
fruits << orange = Fruit.new("orange", 6)

# ap fruits

fruits.each do |f|
  sum += f.weight
end

fruits.each do |f|
  f.prob = f.weight / sum
end

1.upto(iteration) do
  fruit = pick(fruits)
  fruit.count += 1
end

fruits.sort_by!(&:weight).reverse!

# ap fruits
puts "\nNAME\tWEIGHT\tCOUNT\tPROBABILITY\tQUOTIENT (C/(P*I))"
puts "=" * 58
fsum = 0
fruits.each do |f|
  puts "#{f.name}\t#{f.weight}\t#{f.count}\t#{f.prob}\t\t#{f.count.to_f/(f.prob*iteration)}"
  fsum += f.count.to_f/(f.prob*iteration)
end
puts "\n"
puts (1 - fsum / fruits.count).abs
