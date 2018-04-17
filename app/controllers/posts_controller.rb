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
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
