class Api::V1::AuthController < ApplicationController

  def login
    user = User.find_by(name: params[:name])

    if user && user.authenticate(params[:password])
      token = encode_token(user.id)
      render json: {user: user, token: token}
    else
      render json: {errors: "That didn't work... try again."}
    end
  end

  def auto_login


    if session_user
      render json: session_user
    else
      render json: {errors: "You are no child of mine."}
    end

  end
end
