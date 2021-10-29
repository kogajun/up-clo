class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :color
  belongs_to :pattern
  belongs_to :season
  
  validates :image,       presence: true
  validates :brand,       length: { maximum: 40 }
  validates :item_name,   presence: true, null: false, length: { maximum: 20 }
  validates :category_id, presence: true, null: false, numericality: { other_than: 0, message: "can't be blank" }
  validates :color_id,    presence: true, null: false, numericality: { other_than: 0, message: "can't be blank" }
  validates :pattern_id,  presence: true, null: false, numericality: { other_than: 0, message: "can't be blank" }
  validates :season_id,   presence: true, null: false, numericality: { other_than: 0, message: "can't be blank" }
  validates :price,       presence: true, null: false, numericality: { only_integer: true, greater_than: 0, less_than: 10_000_000 }
  validates :size,        presence: true, null: false
  validates :scene,       length: { maximum: 20 }
  validates :memo,        length: { maximum: 100 }
end
