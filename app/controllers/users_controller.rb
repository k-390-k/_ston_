class UsersController < ApplicationController
  skip_before_action :login_required
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    end
  end

  def edit
  end

  private 
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
