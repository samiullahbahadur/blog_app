class PostsController < ApplicationController
  def index
    @post=['first post','second post','I think it\'s okay']
  end

  def show
    @patien=post.find(params[:id])
  end
end
