class PostsController < ApplicationController
  def feed
    @posts = Post.all
  end

  def index
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @user = User.find(session[:user_id])
    post = Post.new(post_params)
    post.user_id = @user.id
    if post.save
      redirect_to user_posts_path(@user)
    else
      redirect_to :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
