class AuthController < ApplicationController

  def login
    user = User.first
    render json: user
  end

  def signup
    user = User.last
    render json: user
  end
  
end