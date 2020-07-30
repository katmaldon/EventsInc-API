class UsersController < ApplicationController

    before_action :find_user, only: [:show, :destroy]
    before_action :ensure_logged_in, only: [:show]

    def new
        @user = User.new
        render json: @user
    end

    def create
        @user = User.create(user_params)
        if User.valid?
            render json: { user:
            UserSerializer.new(@user) }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def index
        @users = User.all
        render json: @users
    end

    def show
        render json: @user
    end

    def destroy
        @user.destroy
        render json: @users
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :age, :location, :bio, :image_url)
    end

    def find_user
        @user = User.find(params[:id])
    end


end
