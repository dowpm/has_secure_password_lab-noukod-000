class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = User.find_by(params[:name])
      return head(:forbidden) unless @user.authenticate(params[:password])
      session[:user_id] = @user.id

    if @user
      
  end
end
