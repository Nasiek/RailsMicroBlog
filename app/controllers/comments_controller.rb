class CommentsController < ApplicationController
  def index
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(user_params)
      if @user.save
          redirect_to users_path
      else
          render 'new'
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

  def comment_params
     params.require(:comment).permit(:content)
end
def find_comment
     @comment = Comment.find(params[:id])
end
end
