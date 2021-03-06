class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  # include ApplicationHelper


  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    if @user.save
      login(@user.id)
      redirect_to @user
    else
      render :new
    end
  end

  def show

  end



  private
  def user_params
    params.require(:user).permit(:name, :password, :happiness, :nausea, :tickets, :height, :admin)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
