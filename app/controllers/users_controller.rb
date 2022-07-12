class UsersController < ApplicationController
  def index
    @user=User.all
  end

  def show;
  @user=User.find(params[:id])
  @posts=Post.where(user:@user)
  end
end
