FactoryBot.define do
  factory :user do
    nickname              { 'あいうえお' }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password }
    password_confirmation { password }
  end
end