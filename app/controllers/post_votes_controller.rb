class PostVotesController < ApplicationController
  def create
    Vote.create(user_id: session[:user_id], post_id: params[:post_id])
  end
end
