
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
      "Take #{pronoun(number)} down and pass it around, " +
      "#{quantity} #{container(number-1)} of beer on the wall.\n"
    else
      "#{number} #{container(number)} of beer on the wall, " + 
      "#{number} #{container(number)} of beer.\n" +
      "Take #{pronoun(number)} down and pass it around, " +
      "#{number-1} #{container(number-1)} of beer on the wall.\n"
    end
  end

  def quantity number=:FIXME
    "no more"
  end

  def container number
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun number
    if number == 1
      "it"
    else
      "one"
    end
  end
end
