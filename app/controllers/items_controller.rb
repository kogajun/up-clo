class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
  before_action :move_to_index, except: [:index]
  before_action :set_item, only: [:indix, :edit, :show]

  def index
    @items = Item.all.includes(:user)
    @items = Item.page(params[:page]).order('created_at DESC').per(10)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      render :create
    else
      render :new
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      render :update
    else
      render :edit
    end
  end

  def show
  end

  private
  
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def item_params
    params.require(:item).permit(:image, :brand, :item_name, :color_id, :category_id, :color_id, :pattern_id, :season_id, :price, :size, :scene, :memo).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end