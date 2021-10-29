require 'rails_helper'
RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe 'アイテムポスト' do
    context 'ポストできるとき' do
      it '全ての値が存在すれば出品できる' do
        expect(@item).to be_valid
      end
      it '任意の値は無くてもポストできる' do
        @item.brand = ''
        @item.scene = ''
        @item.memo = ''
        expect(@item).to be_valid
      end
    end
    context 'ポストできないとき' do
      it 'item_nameが空だとポストできない' do
        @item.item_name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Item name can't be blank")
      end
      it 'category_idが空だとポストできない' do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it 'color_idが空だとポストできない' do
        @item.color_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Color can't be blank")
      end
      it 'pattern_idが空だとポストできない' do
        @item.pattern_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Pattern can't be blank")
      end
      it 'season_idが空だとポストできない' do
        @item.season_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Season can't be blank")
      end
      it 'priceが空だとポストできない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price is not a number")
      end
      it 'sizeが空だとポストできない' do
        @item.size = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Size can't be blank")
      end
      it 'imageが空だとポストできない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it '価格が¥0未満だとポストできない' do
        @item.price = '-1'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be greater than 0')
      end
      it '価格が¥9,999,999より大きいポストできない' do
        @item.price = '10000000'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be less than 10000000')
      end
      it '価格は半角数値以外はポストできない' do
        @item.price = '３００'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not a number')
      end
      it 'userが紐付いていないとポストできない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('User must exist')
      end
      it 'category_idに「---」が選択されている場合はポストできない' do
        @item.category_id = '0'
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it 'color_id---」が選択されている場合はポストできない' do
        @item.color_id = '0'
        @item.valid?
        expect(@item.errors.full_messages).to include("Color can't be blank")
      end
      it 'pattern_idに「---」が選択されている場合はポストできない' do
        @item.pattern_id = '0'
        @item.valid?
        expect(@item.errors.full_messages).to include("Pattern can't be blank")
      end
      it 'season_idに「---」が選択されている場合はポストできない' do
        @item.season_id = '0'
        @item.valid?
        expect(@item.errors.full_messages).to include("Season can't be blank")
      end
    end
  end
end
