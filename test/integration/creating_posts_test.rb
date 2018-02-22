require 'test_helper'

class CreatingPostsTest < ActionDispatch::IntegrationTest

  test "post interface" do 
    get root_path
    # Invalid post
    assert_no_difference 'Post.count' do 
      post posts_path, params: { post: { title: "", content: "" }}
    end
    assert_select 'div#error_explanation'
    # Valid post
    title   = "Things"
    content = "This is a post that says stuff and things."
    assert_difference 'Post.count', 1 do 
      post posts_path, params: { post: { title: title, content: content } }
    end
    assert_redirected_to root_url
    follow_redirect!
    assert_match content, response.body
    # Delete post
    assert_select 'a', text: 'delete'
    first_post = Post.first 
    assert_difference 'Post.count', -1 do 
      delete post_path(first_post)
    end
  end
end
