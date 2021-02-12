class AuthController < ApplicationController


  def register
    user = User.create(register_params)
    if user.valid?

      secret = Rails.application.secrets.secret_key_base

      token = JWT.encode({ user_id: user.id }, secret,"HS256")

      render json: {user: UserSerializer.new(user), token: token }, status: :created
    else  
      render json: { error: "Username is taken"}, status: :unprocessable_entity
    end 
  end

  def login
    # user = User.first
    # render json: user
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])

      secret = Rails.application.secrets.secret_key_base

      token = JWT.encode({ user_id: user.id }, secret,"HS256")

      render json: {user: UserSerializer.new(user), token: token } 
    else
      render json: {error: "Invalid username or password "}, status: :unauthorized
    end
  end

  private 
  
  def register_params
    params.require(:auth).permit(:first_name, :last_name, :username, :password, :monthly_income)
  end
  
end