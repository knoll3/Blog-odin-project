class FollowersController < ApplicationController
  
  def subscribe
    @follower = Follower.new
  end
end
