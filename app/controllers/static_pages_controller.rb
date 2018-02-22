class StaticPagesController < ApplicationController
  def home
    @posts = Post.all
  end
  
  def about
  end

  def pictures
  end
  
  def videos
  end
  
  def subscribe
  end
end
