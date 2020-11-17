class Product < ApplicationRecord
  belongs_to :category_id
  belongs_to :user_id
  has_many :transactions
  has_many :carts

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 400 }
  validates :price, presence: true
end
