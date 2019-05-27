class PostsController < ApplicationController
  before_action :logged_in? , only: [:new, :create]
  
  def new
    @post = Post.new
  end

  def create
  
  end

  def index
    @post = Post.all
  end
end
