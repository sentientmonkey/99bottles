gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative '../lib/bottles'

module VerseRoleTest
  def test_plays_verse_role
    assert_respond_to @role_player, :lyrics
  end
end
