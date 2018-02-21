class FollowersController < ApplicationController
  
  def subscribe
    @follower = Follower.new
  end
  
  def create
    @follower = Follower.new(user_params)
    if @follower.save
      # Handle a successful save
    else
      render 'subscribe'
    end
  end
  
  private
  
    def user_params
      params.require(:follower).permit(:name, :email)
    end
end
