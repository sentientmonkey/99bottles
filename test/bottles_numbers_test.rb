require_relative 'test_helper'

class BottleNumberTest < Minitest::Test

  def test_returns_correct_class_for_given_number
    assert_equal BottleNumber0, BottleNumber.for(0).class
    assert_equal BottleNumber1, BottleNumber.for(1).class
  end
end
