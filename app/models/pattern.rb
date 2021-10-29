class Pattern < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '無地' },
    { id: 2, name: 'ストライプ' },
    { id: 3, name: 'ボーダー' },
    { id: 4, name: 'ドット' },
    { id: 5, name: 'チェック' },
    { id: 6, name: '花柄' },
    { id: 7, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :items
end