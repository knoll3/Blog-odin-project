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
  
  test "name should not be too long" do
    @follower.name = "a" * 51
    assert_not @follower.valid?
  end
  
  test "email should not be too long" do
    @follower.email = "a" * 244 + "@example.com"
    assert_not @follower.valid?
  end
  
  test "email validation should accept valid addresses" do
    valid_addresses = %w[follower@example.com FOLLOWER@foo.com 
                         first_last@example.com first+last@foo.com]
    valid_addresses.each do |valid_address|
      @follower.email = valid_address
      assert @follower.valid?, "#{valid_address.inspect} should be valid"
    end 
  end 
  
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[follower@example,com follower_user_name.com 
                           follower.name@example. foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @follower.email = invalid_address
      assert_not @follower.valid?, "#{invalid_address.inspect} should be invalid"
    end 
  end 
  
  test "email should be unique" do
    duplicate_follower = @follower.dup
    duplicate_follower.email = @follower.email.upcase
    @follower.save
    assert_not duplicate_follower.valid?
  end
  
  test "email address should be saved as lower-case" do 
    mixed_case_email = "FoO@ExAmPlE.CoM"
    @follower.email = mixed_case_email
    @follower.save
    assert_equal mixed_case_email.downcase, @follower.reload.email
  end 
end
