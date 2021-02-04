class AuthController < ApplicationController

    def login
      @current_user = User.first
      render json: @current_user
    end
  
end