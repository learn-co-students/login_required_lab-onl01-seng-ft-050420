class SessionsController < ApplicationController

    def new
        
    end 

    def create 
        
        if params[:name].present?
            session[:name] = params[:name]
            redirect_to root_path
        else 
            redirect_to new_path 
        end 
    end 

    def destroy
        session.delete :name
        redirect_to root_path 
    end 

    private 

 
end
