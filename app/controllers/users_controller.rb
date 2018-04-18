class UsersController < ApplicationController
  def index
    @user = User.new
    @showuser = User.find(params[:id])
  end

def myprofile
@user = User.find(params[current_user])
end

  def show
    @fname = User.find(params[:id]).fname
    puts '******************'
   @username= User.find(params[:id]).username
   @user = User.find(params[:id])
  end

  def new
   @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
          redirect_to users_path
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
     @user = User.find(params[:id])
end

end
