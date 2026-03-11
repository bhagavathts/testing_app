class ApplicationController < ActionController::Base
  def hello
    render html:"hello"
  end
  include SessionsHelper

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
