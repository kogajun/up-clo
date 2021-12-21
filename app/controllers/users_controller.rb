class UsersController < ApplicationController
  def index
    @users = User.all
    @items = Item.page(params[:page]).order('created_at DESC').per(5)
  end

  def show
    @user = User.find(params[:id])
    @items = @user.items.page(params[:page]).order('created_at DESC').per(5)
  end
end
