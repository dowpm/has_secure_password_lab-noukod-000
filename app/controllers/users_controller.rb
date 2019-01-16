class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create

  end

  private

  def userS_params
    params.require(:user).permit(:name, :password)
  end
end
