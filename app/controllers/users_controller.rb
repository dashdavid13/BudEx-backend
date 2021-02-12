class UsersController < ApplicationController
    # before_action :authorize, only: [:profile]


    # get "/profile"
    # def profile
    #     #decode token
    #     begin 
    #         auth_headers = request.headers["Authorization"]
    #         token = auth_headers.split.last
    #         payload = JWT.decode(token, Rails.application.secrets.secret_key_base, true, {algorithm: 'HS256'})
    #         #get user id from payload
    #         user_id = payload[0]["user_id"]
    #         #find the user 
    #         user = User.find(user_id)
    #         render json: user 
    #     rescue 
    #         render json: {error: "nice try"}, status: :unauthorized
    #     end 
    # end 
    
    def home
        @user = AuthorizeRequest.new(request.headers).user

        if @user
            render json: @user
        else
            render json: { error: "Unauthorized request" }, status: :unauthorized
        end
    end

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end


    def create
        @user = User.create(user_params)
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end


    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: @user
    end


  
    private

    def user_params
        params.permit(:first_name, :last_name, :username, :password, :monthly_income, :id)
    end
end
