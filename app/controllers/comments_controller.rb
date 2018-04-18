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
    @comment = Comment.new(comment_params)
      if @comment.save
          redirect_to comments_path
      else
          render 'new'
  end

  def edit
  end

  def update
  end

  def delete
    Comment.delete(params[:id])
      redirect_to comment_path
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

private

  def comment_params
      params.require(:comment).permit(:content)
  end
  def find_comment
     @comment = Comment.find(params[:id])
end
