class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :transactions
  has_many :carts

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 400 }
  validates :price, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description ],
    associated_against: {
      category: [ :name]
    },
    using: {
      tsearch: { prefix: true }
    }
end
