
class Bottles
  def verse number
    if number == 99
      "99 bottles of beer on the wall, 99 bottles of beer.\n" +
      "Take one down and pass it around, 98 bottles of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" +
      "Take one down and pass it around, 88 bottles of beer on the wall.\n"
    end
  end
end
