class PostsController < ApplicationController
  before_action :logged_in? , only: [:new, :create]
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.author = current_user.name
    if @post.save
      flash[:info] = "Post submitted"
      redirect_to action: "index"
    else
      flash[:danger] = "Error: Post not submitted"
      render 'new'
    end
  end

  def index
    @posts = Post.all
  end

  private
    def post_params
      params.require("post").permit(:title, :body)
    end

end
