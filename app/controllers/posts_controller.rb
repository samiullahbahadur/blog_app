class PostsController < ApplicationController
  def index
    
  end

  def show
    @patien=post.find(params[:id])
  end
end
