class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
      if @post.save
        @user = session[:user_id]
        @user.posts << @post
        redirect_to root_path
      else
        redirect_to root_path
      end
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comment = Comment.new()
    @comments = Comment.where(post_id: params[:id])
  end


  private
    def post_params
      params.require(:post).permit(:title, :url)
    end
end
