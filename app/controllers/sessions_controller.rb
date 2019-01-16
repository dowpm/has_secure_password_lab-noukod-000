class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = User.find_by(params[:name])
      return head(:forbidden) unless @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to controller: 'users', action: :index
    else
      redirect_to controller: 'sessions', action: :new
    end
  end
end
