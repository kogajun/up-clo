FactoryBot.define do
  factory :item do
    brand        { 'USED' }
    item_name    { 'カットソー' }
    category_id  { '2' }
    color_id     { '2' }
    pattern_id   { '2' }
    season_id    { '2'}
    price        { '300' }
    size         { 'M' }
    scene        { 'お出かけ' }
    memo         { 'メモ' }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/image.png'), filename: 'image.png')
    end
  end
end
