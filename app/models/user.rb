class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :nickname, presence: true, length: { maximum: 6 },
                       format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :password, confirmation: true, length: { minimum: 6 },
                       format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
end
