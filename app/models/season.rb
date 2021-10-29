class Season < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'オールシーズン' },
    { id: 2, name: '春物' },
    { id: 3, name: '夏物' },
    { id: 4, name: '秋物' },
    { id: 5, name: '冬物' },
    { id: 6, name: '春秋' },
    { id: 7, name: 'S/S' },
    { id: 8, name: 'A/W' },
    { id: 9, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :items
end