class Order < ApplicationRecord
  belongs_to :user
  belongs_to :inventory
  has_many :inventories
  
  validates :quantity, :buy_date, :confirmation_date, :delivered, :user_id, :inventory_id
end
