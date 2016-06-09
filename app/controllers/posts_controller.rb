class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end

  def new
    @post = Post.new
  end

  private

  def post_params
    params.require(:post).permit(:image, :caption)
  end
end
