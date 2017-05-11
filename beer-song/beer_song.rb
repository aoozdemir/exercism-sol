module BookKeeping
  VERSION = 2
end

class BeerSong
  def verse(s)
    bottles = s
    remain = s - 1
    if bottles.zero?
      bottles = "no more"
      res = "#{bottles.capitalize} bottles of beer on the wall, #{bottles} bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif remain.zero?
      remain = "no more"
      res = "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer.\n" \
      "Take it down and pass it around, #{remain} bottles of beer on the wall.\n"
    elsif remain == 1
      res = "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.\n" \
      "Take one down and pass it around, #{remain} bottle of beer on the wall.\n"
    else
      s.downto(3) do |i|
        res = "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.\n" \
        "Take one down and pass it around, #{remain} bottles of beer on the wall.\n"
      end
    end

    res
  end
end
