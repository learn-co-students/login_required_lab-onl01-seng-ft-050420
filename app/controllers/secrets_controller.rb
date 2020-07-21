class SecretsController < ApplicationController

    def show
        if current_user.blank? 
            redirect_to new_path 
        end 
    end 
end
