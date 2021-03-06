class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
      @user = User.find(params[:id]) # ここを記述
  end
  def edit
      @user = User.find(params[:id])
  end
  def destroy
      user = User.find(params[:id])
      user.destroy
      redirect_to users_path
  end
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  private
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
