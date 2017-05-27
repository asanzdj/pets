class SessionController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_login(user_params[:login])
    if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      redirect_to '/person'
    else
      redirect_to '/login?error=fail'
    end
  end

 def destroy
   session[:user_id] = nil
   redirect_to '/login'
 end

private
 def user_params
   params.require(:session).permit(:login, :password)
 end

end
