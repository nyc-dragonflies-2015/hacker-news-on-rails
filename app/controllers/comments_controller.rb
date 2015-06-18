class CommentsController < ApplicationController
  def index
    @user = User.find_by(id: params[:id])
    @comments = Comment.where(user_id: params[:id])
  end

  def create
    require_login
    comment = Comment.create(comment_params)
    post = Post.find(params[:post_id])
    post.comments << comment
    redirect_to post_path(post.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :user_id, :post_id)
  end

end
