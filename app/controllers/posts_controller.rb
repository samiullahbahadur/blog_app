class PostsController < ApplicationController
  def index
    @my_post=['first post','second post','I think it\'s okay']
  end

  def show
    @patien=post.find(params[:id])
  end
end
