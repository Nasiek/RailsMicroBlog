class SessionsController < ApplicationController
  def new

  end

  def post
  	redirect_to users_myprofile_path
  end
  def create

redirect_to users_path
  end
end
