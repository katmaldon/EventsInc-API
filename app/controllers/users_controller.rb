class UsersController < ApplicationController

    before_action :find_user, only: [:show, :destroy]
    before_action :ensure_logged_in, only: [:show]

    def new
        @user = User.new
        render json: @user
    end

    def create
        @user = User.create(user_params)
        # if User.valid?
        #     session[:user_id] = User.id
        #     redirect_to user_path(user)
        # else
        #     flash[:errors] = User.errors.full_messages
        #     redirect_to new_user_path
        # end

        if @user.save
            login!(@user)
            redirect_to user_path(@user)
        else
            flash.now[:errors] = @user.errors.full_messages
            redirect_to events_path
        end
    render json: @user
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
        params.require(:user).permit(:name, :age, :location, :bio, :interests, :image_url)
    end

    def find_user
        @user = User.find(params[:id])
    end


end
