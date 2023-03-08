class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :inventory
  has_many :products, through: :inventory, dependent: :destroy

  validates :inventory_product_id, :quantity, :user_id
end
