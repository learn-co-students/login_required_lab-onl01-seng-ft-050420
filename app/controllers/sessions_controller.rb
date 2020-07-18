class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name].nil?
            redirect_ to '/login'
        elsif params[:name] == ""
            redirect_to '/login'
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        if !session[:name].nil?
            session.delete :name
        end
    end

end