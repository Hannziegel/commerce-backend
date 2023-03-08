class Inventory < ApplicationRecord
  belongs_to :address
  belongs_to :product
  has_many :products
  has_many :orders

  validates :product_id, :quantity, :order_id, :address_id
end
