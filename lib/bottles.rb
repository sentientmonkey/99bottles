class Bottles
  def song
    verses(99, 0)
  end

  def verses n,m=n
    n.downto(m).map do |number|
      verse number
    end.join "\n"
  end

  def verse number
    [stanza_one(number),
     stanza_two(number)].join
  end

  private

  def stanza_one number
    "#{bottles(number).capitalize} of beer on the wall, #{bottles number} of beer.\n"
  end

  def stanza_two number
    "#{action(number)}, #{bottles(number-1)} of beer on the wall.\n"
  end

  def action number
    if number.zero?
      "Go to the store and buy some more"
    else
      "Take #{one(number)} down and pass it around"
    end
  end

  def bottles number
    [how_many(number),
     pluralize(number, "bottle", "bottles")].join ' '
  end

  def pluralize number, singular, plural
    (number == 1) ? singular : plural
  end

  def how_many number
    number = number % 100
    if number >= 1
      number.to_s
    else
      "no more"
    end
  end

  def one number
    if number > 1
      "one"
    else
      "it"
    end
  end
end
