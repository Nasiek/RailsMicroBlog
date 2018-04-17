class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = 
  end

  def create
    @user = User.new(user_params)
      if @user.save
          redirect_to users_path
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

private

  def user_params
      params.require(:user).permit(:username, :email, :email_confirmation, :password)
  end

end
