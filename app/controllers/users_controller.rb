class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end
  def show
    @user = User.find_by(id: params[:id])
  end
  def create
  @user = User.create(
  name = params[:name],
  email = params[:email],
  password = params[:password],
  image_url = params[:image_url]
  )
  end
end
