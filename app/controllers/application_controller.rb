class ApplicationController < ActionController::Base
  before_action :current_user

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def current_user?
    # consider implementing roles and changing this to current_admin? in future
    current_user
  end
end
