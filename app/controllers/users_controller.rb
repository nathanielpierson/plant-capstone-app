class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end
  def show
    @user = User.find_by(id: params[:id])
  end
  def create
  @user = User.new(
  name: params[:name],
  email: params[:email],
  password_digest: params[:password_digest],
  image_url: params[:image_url]
  )
  @user.save
  render :show
  end
end
