class SessionsController < ApplicationController

  def create
    user= User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:message] = "Sign in not found. Please enter valid email and password."
      redirect_to "/signin"
    end
  end

    def destroy
      session.delete("user_id")
      redirect_to home_path
    end
end
