class UsersController < ApplicationController
  before_action :get_user, except: [:new, :create]

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params(:name, :username))
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params(:name))
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
  end

private

def get_user
  @user = User.find_by_id(params[:id])
end

def user_params(*args)
  params.require(:user).permit(*args)
end
  
end
