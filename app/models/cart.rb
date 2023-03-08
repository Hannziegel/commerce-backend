class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :inventory
  has_many :inventories

  validates :inventory_id, :quantity, :user_id
end
