class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def current_user
    @current_user = User.find_by(name: session[:name])
    session[:name]
        #binding.pry
  end
end
#[6] pry(#<ApplicationController>)> session[:name]
#=> "Kate Libby"