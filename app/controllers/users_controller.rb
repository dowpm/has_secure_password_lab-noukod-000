class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new userS_params

    if @user.save
      redirect_to controller: 'sessions', action: :new
    else
      flash[:alert] = 'Failed creating your account'
      # flash[:error] = @user.errors.messages
      redirect_to controller: 'users', action: :new
    end
  end

  private

  def userS_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
