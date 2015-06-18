class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  @post = Post.find_by(id: params[:id])
  @comment = Comment.new()
  @comments = Comment.where(post_id: params[:id])
  end

end
