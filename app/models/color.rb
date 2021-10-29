class Color < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'ホワイト' },
    { id: 2, name: 'グレー' },
    { id: 3, name: 'ブラック' },
    { id: 4, name: 'ベージュ' },
    { id: 5, name: 'ブラウン' },
    { id: 6, name: 'ピンク' },
    { id: 7, name: 'レッド' },
    { id: 8, name: 'イエロー' },
    { id: 9, name: 'グリーン' },
    { id: 11, name: 'ブルー' },
    { id: 12, name: 'パープル' },
    { id: 13, name: 'その他' }
  ]
  
  include ActiveHash::Associations
  has_many :items
end