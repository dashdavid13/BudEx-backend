class AuthController < ApplicationController

  def login
    render json: @current_user
  end
  
end