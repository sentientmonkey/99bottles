require_relative "test_helper"

class BottleVerseTest < Minitest::Test
  def test_the_first_verse
    expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
VERSE
    assert_equal expected, BottleVerse.lyrics(99)
  end
end
