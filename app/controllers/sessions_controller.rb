class SessionsController < ApplicationController 
    def create
        if !params[:name].present? || params[:name].nil?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/secrets'
        end
    end

    def destroy
        session.delete :name unless session[:name].nil?
    end
end