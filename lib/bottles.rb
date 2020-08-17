
class Bottles
  def song
    verses 99, 0
  end

  def verses from, to
    from.downto(to).map{ |number| verse number }.join "\n"
  end

  def verse number
    case number
    when 2
      "2 #{container(number)} of beer on the wall, 2 #{container(number)} of beer.\n" +
      "Take one down and pass it around, 1 #{container(number-1)} of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
      "Take it down and pass it around, no more #{container(number-1)} of beer on the wall.\n"
    when 0
      "No more #{container(number)} of beer on the wall, no more #{container(number)} of beer.\n" +
      "Go to the store and buy some more, 99 #{container(99)} of beer on the wall.\n"
    else
      "#{number} #{container(number)} of beer on the wall, #{number} #{container(number)} of beer.\n" +
      "Take one down and pass it around, #{number-1} #{container(number-1)} of beer on the wall.\n"
    end
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end
end
