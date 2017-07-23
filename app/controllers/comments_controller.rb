class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    @comments = Post.find(params[:comment][:post_id]).comments
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id, :user_id)
  end
end