class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'インナー' },
    { id: 2, name: 'トップス' },
    { id: 3, name: 'アウター/ジャケット' },
    { id: 4, name: 'ボトムス' },
    { id: 5, name: 'オールインワン' },
    { id: 6, name: 'スーツ' },
    { id: 7, name: 'シューズ' },
    { id: 8, name: 'バッグ' },
    { id: 9, name: 'アクセサリー' },
    { id: 10, name: '雑貨' },
    { id: 11, name: 'その他' }
  ]
  
  include ActiveHash::Associations
  has_many :items
end

