class Category < ApplicationRecord
  belongs_to :product
  has_many :products

  validates :name, :product_id
end
