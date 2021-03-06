class UsersController < ApplicationController
  before_action :correct_user
  
  
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
end
