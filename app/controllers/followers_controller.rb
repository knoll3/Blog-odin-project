class FollowersController < ApplicationController
  
  def subscribe
    @follower = Follower.new
  end
  
  def create
    @follower = Follower.new(user_params)
    if @follower.save
      flash[:success] = "You have successfully subscribed."
      redirect_to root_path
    else
      render 'subscribe'
    end
  end
  
  private
  
    def user_params
      params.require(:follower).permit(:name, :email)
    end
end
