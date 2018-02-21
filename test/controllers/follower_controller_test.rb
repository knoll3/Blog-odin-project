require 'test_helper'

class FollowerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get follower_new_url
    assert_response :success
  end

end
