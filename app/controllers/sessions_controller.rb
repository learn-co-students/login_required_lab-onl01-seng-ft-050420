class SessionsController < ApplicationController
    def new

    end

    def create
        if params[:name] == nil #verify params so that we know whether or not to set a session up with a name
            redirect_to '/login'
        elsif params[:name] == "" 
           redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to "/show"
        end
    end

    def destroy
        if session[:name] != nil
        session.clear
        end
    end

    def homepage
        render :homepage
    end

end