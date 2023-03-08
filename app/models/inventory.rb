class Inventory < ApplicationRecord
  belongs_to :address
  belongs_to :product
  has_many :products, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :product_id, :quantity, :order_id, :address_id
end
