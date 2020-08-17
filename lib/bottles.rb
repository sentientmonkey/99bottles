
class Bottles
  def song
    verses 99, 0
  end

  def verses from, to
    from.downto(to).map{ |number| verse number }.join "\n"
  end

  def verse number
    case number
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " + 
      "99 bottles of beer on the wall.\n"
    when 1
      "#{number} #{container(number)} of beer on the wall, " + 
      "#{number} #{container(number)} of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    else
      "#{number} #{container(number)} of beer on the wall, " + 
      "#{number} #{container(number)} of beer.\n" +
      "Take #{pronoun} down and pass it around, " +
      "#{number-1} #{container(number-1)} of beer on the wall.\n"
    end
  end

  def container number
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun number=:FIXME
    "one"
  end
end
