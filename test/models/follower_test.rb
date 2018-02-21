require 'test_helper'

class FollowerTest < ActiveSupport::TestCase
  
  def setup
    @follower = Follower.new(name: "Example follower", email: "follower@example.com")
  end
  
  test "should be valid" do
    assert @follower.valid?
  end
  
  test "name should be present" do
    @follower.name = "    "
    assert_not @follower.valid?
  end
  
  test "email should be present" do
    @follower.email = "     "
    assert_not @follower.valid?
  end
end
