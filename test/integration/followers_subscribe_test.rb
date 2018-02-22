require 'test_helper'

class FollowersSubscribeTest < ActionDispatch::IntegrationTest
  
  test "invalid subscibe information" do 
    get subscribe_path
    assert_no_difference 'Follower.count' do
      post followers_path, params: { follower: { name: "", email: "follower@invalid" } }
    end
    assert_template 'followers/subscribe'
    assert_select 'div#error_explanation'
    assert_select 'div.alert'
  end
end