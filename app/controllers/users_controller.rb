class UsersController < ApplicationController
  def index
    @user = User.where(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end
end
