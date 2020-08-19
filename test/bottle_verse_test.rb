require_relative "test_helper"

class BottleVerseTest < Minitest::Test
  def test_general_rule_upper_bound
    expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
VERSE
    assert_equal expected, BottleVerse.lyrics(99)
  end

  def test_general_rule_lower_bound
    expected = <<-VERSE
3 bottles of beer on the wall, 3 bottles of beer.
Take one down and pass it around, 2 bottles of beer on the wall.
    VERSE
    assert_equal expected, BottleVerse.lyrics(3)
  end

  def test_verse_6
    expected = <<-VERSE
1 six-pack of beer on the wall, 1 six-pack of beer.
Take one down and pass it around, 5 bottles of beer on the wall.
    VERSE
    assert_equal expected, BottleVerse.lyrics(6)
  end

  def test_verse_2
    expected = <<-VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
    VERSE
    assert_equal expected, BottleVerse.lyrics(2)
  end

  def test_verse_1
    expected = <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
    assert_equal expected, BottleVerse.lyrics(1)
  end

  def test_verse_0
    expected = <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
    assert_equal expected, BottleVerse.lyrics(0)
  end
end
