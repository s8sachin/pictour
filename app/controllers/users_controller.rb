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
      flash[:success] = "User Created Successfully !"
      redirect_to root_path
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
