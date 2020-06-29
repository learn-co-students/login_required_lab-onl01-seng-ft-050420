class SessionsController < ApplicationController
  
  def create
    if !params[:name] || params[:name] == ""
      redirect_to(controller: 'sessions', action: 'new')
    else
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'index'
    end
  end
  
  def destroy
    session.delete :name
  end
end
