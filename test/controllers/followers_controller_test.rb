require 'test_helper'

class FollowersControllerTest < ActionDispatch::IntegrationTest
  test "should get subscribe" do
    get subscribe_path
    assert_response :success
    assert_select "title", "Subscribe | Blog Template"
  end 

end
