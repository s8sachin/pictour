class UsersController < ApplicationController
  def new
    @user = User.new
    respond_to do | format |
      format.js
    end
  end

  def create
    @user=User.new(user_params)
    if @user.save
      redirect_to root_path, flash[:success] => "User Created successfully !"
      else
        render 'new', :notice => "Something went wrong."
      end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:name,:username,:email,:password,:password_confirmation)
  end

end
