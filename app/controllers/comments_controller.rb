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
    @comment.user_id = current_user.id
      if @comment.save
          redirect_to post_path(@comment.post)
      else
          render 'new'
          p @comment.errors.full_messages
  end
end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to post_path(@comment.post_id) 
    else
      render 'edit'
  end
  end

  def delete
    find_comment
    @post = @comment.post
    Comment.delete(params[:id])
      redirect_to post_path(@post)
  end

  def destroy
  end

private 

  def comment_params
     params.require(:comment).permit(:comment, :post_id)
end

def find_comment
     @comment = Comment.find(params[:id])
end
end
