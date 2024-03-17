class UsersController < ApplicationController
    def index
        # @users = User.order("RANDOM()")
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

     def destroy
        @user = User.find(params[:id])
        @user.destroy!
    end
    
end
