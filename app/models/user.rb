class User < ApplicationRecord
  has_one_attached :photo
  has_many :products, dependent: :destroy
  has_many :transactions, dependent: :destroy
  has_one :cart, dependent: :destroy

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/,
                                                                message: 'Email invalid' }
  validates :first_name, presence: true
  validates :last_name, presence: true
end
