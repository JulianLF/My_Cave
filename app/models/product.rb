class Product < ApplicationRecord
  include PgSearch::Model

  has_one_attached :photo
  belongs_to :category
  belongs_to :user
  has_many :transactions
  has_many :carts
  after_save :default_image
  pg_search_scope :global_search,
                  against: %i[name description],
                  associated_against: {
                    category: [:name]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }

  validates_uniqueness_of :name, scope: :user
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 400 }
  validates :price, presence: true

  def default_image
    return if photo.presence

    photo.attach(io: open("http://res.cloudinary.com/dsgm7fnvb/image/upload/c_fill,h_300,w_400/#{category.photo.key}"),
                 filename: "#{name}.jpg")
  end
end
