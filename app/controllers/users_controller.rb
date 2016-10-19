class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
#      session[:user_id] = user.id
      flash[:notice] = "You signed up successfully"
    else
      flash[:notice] = "Invalid entry"
    end
    redirect_to '/users/new'
  end

private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
