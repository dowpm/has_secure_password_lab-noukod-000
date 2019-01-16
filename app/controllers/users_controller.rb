class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new userS_params

    if @user.save

    else

    end
  end

  private

  def userS_params
    params.require(:user).permit(:name, :password)
  end
end
