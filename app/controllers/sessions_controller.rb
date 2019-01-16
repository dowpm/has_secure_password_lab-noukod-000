class SessionsController < ApplicationController
  def new
  end

  def create
    
  end

  private

  def sessions_params
    params.require(:user).permit(:name, :password)
end
