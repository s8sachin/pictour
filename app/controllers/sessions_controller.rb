class SessionsController < ApplicationController
  def new
    respond_to do | format |
      format.js
    end
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url
      flash[:success] = "Logged in !"
    else
      redirect_to root_url
      flash[:danger] = "Wrong email or password !"
      
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
    flash[:success] = "Logged out !"
  end
end
