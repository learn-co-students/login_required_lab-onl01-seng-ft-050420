class SessionsController < ApplicationController
    def create
        if params[:name].blank?
            redirect_to '/login'
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        if current_user
            session.delete :name
        else
            redirect_to '/login'
        end
    end
end