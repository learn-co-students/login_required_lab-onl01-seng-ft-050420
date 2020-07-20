class SessionsController < ApplicationController

  
  def new

  end

  def create
    # raise params.inspect
    if params[:name].blank? || !params[:name]
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to secret_path
    end
  end

  # def create
  #   return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
  #   session[:name] = params[:name]
  #   redirect_to controller: 'secret', action: 'show'
  # end

  def secret
  end

  def destroy
    session.clear
  end


end
