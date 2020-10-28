class UserController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
    def index
        @users = User.all

        users_json = UserSerializer.new(@users).serialized_json
        render json: users_json
    end 

    def show
        user_json = UserSerializer.new(@user).serialized_json
        render json: user_json
    end 

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user_id
            render json: UserSerializer.new(@user).serialized_json, status: :created
        else 
            resp = { @user.errors.full_message.to_sentence }
            render json: resp, status: :unprocessable_entity
        end 
    end 

    def update
        if @user.update(user_params)
            render json: @user
        else 
            render json: @user.errors, status: :unprocessable_entity
        end 
    end 

    def destroy
        @user.destroy
    end 


    private

    def set_user
        @user = User.find(params[:id])
    end 

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end 
end
