require "test_helper"

class MatchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save match without title" do
    match = Match.new
    assert_not match.save
  end
end
