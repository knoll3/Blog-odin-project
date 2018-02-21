require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Blog Template"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Blog Template"
  end

  test "should get pictures" do
    get pictures_path
    assert_response :success
    assert_select "title", "Pictures | Blog Template"
  end
  
  test "should get videos" do
    get videos_path
    assert_response :success
    assert_select "title", "Videos | Blog Template"
  end  

end
