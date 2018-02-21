require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Blog Template"
  end

  test "should get news" do
    get news_path
    assert_response :success
    assert_select "title", "News | Blog Template"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Blog Template"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Blog Template"
  end

end
