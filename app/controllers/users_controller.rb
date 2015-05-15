class UsersController < ApplicationController

  def show
    load_user
  end

  def new
    build_user
  end

  def create
    build_user  
    save_user or render 'new'
  end

  private

  def load_user
    @user ||= User.find(params[:id])
  end

  def build_user
    @user ||= User.new
    @user.attributes = user_params
  end

  def save_user
    if @user.save
      redirect_to @user
    end
  end

  def user_params
    user_params = params[:user]
    user_params ? user_params.permit(:email, :password, :password_confirmation) : {}
  end
end