class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :user,        null: false, foreign_key: true
      t.integer    :brand
      t.string     :item_name,   null: false
      t.integer    :color_id,    null: false
      t.integer    :category_id, null: false
      t.integer    :pattern_id,  null: false
      t.integer    :season_id,   null: false
      t.integer    :price,       null: false
      t.string     :size,        null: false
      t.string     :scene
      t.text       :memo

      t.timestamps
    end
  end
end
