class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :transactions
  has_many :carts
  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 400 }
  validates :price, presence: true
end
