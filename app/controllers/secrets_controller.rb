class SecretsController < ApplicationController
    before_action :current_user 

    def show
        if current_user.nil?
            redirect_to login_url
        end
    end
end