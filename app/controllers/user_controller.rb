class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if user_params[:password] != user_params[:password_confirmation]
      rediect_to '/signup'
    end
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/person'
    else
      render '/signup'
    end
  end

private
  def user_params
    params.require(:user).permit(:login, :password, :password_confirmation)
  end

end
