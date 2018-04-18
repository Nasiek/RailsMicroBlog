class PostsController < ApplicationController
  def index
    @posts = Post.all
    puts "********************"
    puts @posts
  end

  def show
  end

  def new
  end

  def create
    @post = Post.new(post_params)
      if @post.save
          redirect_to post_path
      else
          render 'new'
      end
  end

  def edit
  end

  def update
  end

  def delete
  Post.delete(params[:id])
      redirect_to post_path
  end

  def destroy
  end

private

def post_params
     params.require(:post).permit(:topic, :content)
end
def find_post
     @post = Post.find(params[:id])
end


private

  def post_params
      params.require(:post).permit(:topic, :content)
  end
  def find_post
     @post = Post.find(params[:id])

end
