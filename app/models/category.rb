class Category < ApplicationRecord
  belongs_to :product
  has_many :products, dependent: :destroy

  validates :name, :product_id
end
