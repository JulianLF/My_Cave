class Product < ApplicationRecord
  has_one_attached :photo
  belongs_to :category
  belongs_to :user
  has_many :transactions
  has_many :carts
  after_validation :default_image

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 400 }
  validates :price, presence: true

  def default_image
    self.photo = category.photo unless photo?
  end
end
