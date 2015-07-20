class SessionsController < ApplicationController
  def signup
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
  	if @user
  		session[:user_id] = @user.id 
  		redirect_to teams_path, flash: {sucess: "Account created."}
  	else 
  		redirect_to signup_path, flash: {alert: "Username already taken."}
  	end

  end

  def login
  end

  private 
  	def user_params
  		params.require(:user).permit(:username, :password, :password_digest)
  	end	
end
