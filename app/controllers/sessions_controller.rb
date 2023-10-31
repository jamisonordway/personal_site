class SessionsController < ApplicationController
  def show
  end

  def create
    user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = "Bad Credentials"
      render :show
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end