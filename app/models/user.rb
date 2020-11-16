class User < ApplicationRecord
  has_one_attached :photo
  has_many :products, dependency: :destroy
  has_many :transactions, dependency: :destroy
  has_one :cart, dependency: :destroy

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A([a-z1-9]+)@([a-z1-9]+)\.([a-z]+)\z/, message: 'Email invalid' }
  validates :first_name, presence: true
  validates :last_name, presence: true
end
