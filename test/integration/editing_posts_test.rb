require 'test_helper'

class EditingPostsTest < ActionDispatch::IntegrationTest

	def setup 
		@post = Post.create(title: "Title", content: "This is the content")
	end

	test "edit post" do 
		get edit_post_path(@post)
		old_title       = @post.title
		old_content     = @post.content
		updated_title   = "Updated Title"
		updated_content = "This is the updated content"
		patch post_path(@post), params: { post: { title:   updated_title, 
			                                        content: updated_content } }
		assert_redirected_to root_url
		follow_redirect!
		assert_match    updated_content, response.body
		assert_no_match old_content,     response.body
	end 	
end
