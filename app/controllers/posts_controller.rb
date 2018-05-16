class PostsController < ApplicationController
  def index
    @posts = Post.all
    puts "********************"
    puts @posts
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(params[:id])
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_path(@post)
end
end

  def new
    @user = current_user
    end

  def create
    @user = current_user
    @post = Post.new(post_params)
    @post.user_id = @user.id
      if @post.save
          redirect_to post_path(@post)
      else
          render plain: params[:post].inspect
      end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post 
    else
      render 'edit'
  end
end

  def delete
  Post.delete(params[:id])
      redirect_to post_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to post_index_path
  end

private

  def comment_params
    params.permit(:comment)
  end
  

  def post_params
      params.require(:post).permit(:topic, :content)
  end

  def find_post
     @post = Post.find(params[:id])

end
end
