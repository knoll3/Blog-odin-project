require 'test_helper'

class FollowersControllerTest < ActionDispatch::IntegrationTest
  test "should get subscribe" do
    get followers_subscribe_url
    assert_response :success
  end

end
