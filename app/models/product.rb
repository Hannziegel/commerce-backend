class Product < ApplicationRecord
  belongs_to :category
  has_many :categories
  belongs_to :inventory
  has_many :inventories

  validates :price, :name, :description, :inventory_id, :category_id
end
