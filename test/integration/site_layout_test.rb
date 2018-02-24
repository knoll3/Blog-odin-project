require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

	def setup
    @post = Post.create(content: "Lorem ipsum is an interesting thing.", title: "Lorem Ipsum")
	end

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", pictures_path
    assert_select "a[href=?]", videos_path
    assert_select "a[href=?]", subscribe_path
    assert_select "a[href=?]", edit_post_path(@post) 
    assert_select "a[href=?]", post_path(@post) 
  end
end
