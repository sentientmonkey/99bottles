class Bottles
  def song
    verses 99, 0
  end

  def verses from, to
    from.downto(to).map{ |number| verse number }.join "\n"
  end

  def verse number
    bottle_number = (number == 0 ? BottleNumber0 : BottleNumber).new number
    succ = bottle_number.successor
    next_bottle_number = (succ == 0 ? BottleNumber0 : BottleNumber).new succ

    "#{bottle_number} of beer on the wall, ".capitalize +
    "#{bottle_number} of beer.\n" +
    "#{bottle_number.action}, " + 
    "#{next_bottle_number} of beer on the wall.\n"
  end

  def bottle_number_for number
    if number == 0
      BottleNumber0.new number
    else
      BottleNumber.new number
    end
  end
end

class BottleNumber
  attr_reader :number

  def initialize number
    @number = number
  end

  def to_s
    "#{quantity} #{container}"
  end

  def successor
    if number == 0
      99
    else
      number - 1
    end
  end

  def action
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def quantity
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def container
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun
    if number == 1
      "it"
    else
      "one"
    end
  end
end

class BottleNumber0 < BottleNumber
  def quantity
    "no more"
  end
end
