class UsersController < ApplicationController
    before_action :set_package, only: %i[ show update destroy ]
  
    # GET /packages
    def index
      @users = User.all
  
      render json: @users
    end
  
    # GET /packages/1
    def show
      render json: @user
    end
  
    # POST /packages
    def create
      @user = User.new(package_params)
  
      if @user.save
        render json: @user, status: :created, location: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /packages/1
    def update
      if @user.update(package_params)
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /packages/1
    def destroy
      @user.destroy!
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_package
        @user = User.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def package_params
        params.require(:user).permit(:name,:email,:balance)
      end
  end
  