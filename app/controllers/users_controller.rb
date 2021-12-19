class UsersController < ApplicationController
  PER_PAGE = 5
  def index
    @users = User.all
    @items = Item.page(params[:page]).order('created_at DESC').per(PER_PAGE)
  end

  def show
    @user = User.find(params[:id])
    @items = Item.page(params[:page]).order('created_at DESC').per(PER_PAGE)
  end
end
