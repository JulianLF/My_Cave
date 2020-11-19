class Product < ApplicationRecord
  has_one_attached :photo
  belongs_to :category
  belongs_to :user
  has_many :transactions
  has_many :carts
  after_save :default_image

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 400 }
  validates :price, presence: true

  def default_image
    return if photo.presence

    photo.attach(io: open("http://res.cloudinary.com/dsgm7fnvb/image/upload/c_fill,h_300,w_400/#{category.photo.key}"),
                 filename: "#{name}.jpg")
  end
end
