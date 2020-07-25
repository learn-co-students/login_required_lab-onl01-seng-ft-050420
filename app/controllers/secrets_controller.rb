class SecretsController < ApplicationController
    before_action :require_login
    def show
        #binding.pry
        if session[:name] == nil
            
            require_login
        else
           
            render :show
        end
    end

    #[1] pry(#<SecretsController>)> session[:name]
    #=> "Maya Angelou"

    def require_login
        redirect_to '/login' unless session[:name]
      end
end