class PostsController < ApplicationController
  before_action :find_post, only: [:show, :confirm_delete, :destroy]
  def index
    @posts = Post.all
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
    @comments = @post.comments
  end

  def confirm_delete
  end

  def destroy
    @post.destroy
    flash[:success] = "Pictour deleted Successfully"
    redirect_to :back
  end

  def find_post
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :pic_url, :description)
  end
end
