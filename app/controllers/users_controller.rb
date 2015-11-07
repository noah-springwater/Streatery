class UsersController < ApplicationController

  def create
    User.create(user_params)
    redirect_to log_in_path
  end

  def new
    @user = User.new
  end

  def index
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end


end
