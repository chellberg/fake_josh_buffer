class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

 def create
  @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post saved to buffer."
      redirect_to @post
    else
      flash[:error] = "Oops, that didn't fuckin' work"
      render 'new'
    end   
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:success] = "Post destroyed"
      redirect_to posts_path
    else
      flash[:error] = "oops"
      redirect_to posts_path
    end
  end

  def update
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit([:text, :url])
  end
end
