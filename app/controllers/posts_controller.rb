class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Successful post."
      redirect_to root_path
    else
      render 'post'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
