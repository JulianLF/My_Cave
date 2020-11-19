class Category < ApplicationRecord
  has_many :products
  has_one_attached :photo

  validates :name, presence: true
end
