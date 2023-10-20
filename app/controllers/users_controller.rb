class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])

  end

  def edit

  end

  def update
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end




end
