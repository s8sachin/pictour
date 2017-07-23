class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new

  end

  def create
    @post = Post.new(post_params)
    if @post.save
      @post.update_attributes(user_id: current_user.id)
      flash[:success] = "New Pictour was successfully uploaded"
    else
      flash[:error] = "Something went wrong, Try again"
    end
    redirect_to :back
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :pic_url, :description)
  end
end
