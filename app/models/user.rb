class User < ApplicationRecord
  has_one :cart, dependent: :destroy
  has_many :orders
  has_many :addresses

  validates :name, :cart_id
end
