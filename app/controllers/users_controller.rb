class UsersController < ApplicationController

  def index
    @user = User.new


  end

def myprofile
@user = current_user

end

  def show
    @fname = User.find(params[:id]).fname
    puts '******************'
   @username= User.find(params[:id]).username
   @user = User.find(params[:id])
   @upost = User.find(params[:id]).posts


  end

  def new
   @user = User.new
  end

  def create
    
    @user = User.new(user_params)
      if @user.save
          log_in(@user)
          redirect_to user_path(@user)
      else
          render 'new'
      end
  end

  def edit
  end

  def update
  end

  def delete
    User.delete(params[:id])
      redirect_to users_path
  end

  def destroy
  end

private

  def user_params
      params.require(:user).permit(:username, :fname, :email, :home, :age, :password)
  end

  def find_user
     @user = User.find(params[:username,:password])
end

end
