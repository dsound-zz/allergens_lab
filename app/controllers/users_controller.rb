class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      flash[:error] = "Only alphanumeric characters please!"
      redirect_to users_path
    else
      redirect_to users_path(@user)
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end


  private

  def user_params
    params.require(:user).permit(:name)
  end

end
