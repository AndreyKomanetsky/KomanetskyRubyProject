class WelcomeController < ApplicationController
  before_action :logged_in_user, only: [:tranport, :users]

  def index
  end

  def registration
  end
  
  def users
    @users = User.all
  end

  def tranport
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end


end
