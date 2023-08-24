class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      flash[:notice] = "You have successfully signed up!"
      session[:user_id] = user.id
      redirect_to "/"
    else
      flash[:alert] = "There was a problem signing up."
      redirect_to :back
    end
  end
    private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
      end

  def new
  end
end
