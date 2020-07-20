class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in? # Needed to get my local app to render the view at root_path, but not to get the tests to pass?

  def current_user
    session[:name]
  end

  def logged_in?
    !!session[:name]
  end
end
