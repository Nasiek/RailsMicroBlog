class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new

  end

  def post
  	redirect_to users_myprofile_path
  end

  def create
  	user = User.find_by(username: params[:session][:username])
  	if user && user.password == params[:session][:password]
  		log_in(user)
		redirect_to user_path(user)
	else
		redirect_to login_path
	end
  end

  def destroy
  	log_out
  	redirect_to login_path
  end
end
