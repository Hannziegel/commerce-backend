class Address < ApplicationRecord
  belongs_to :user
  belongs_to :inventory

  validates :state, :city, :district, :street, :house_number, :zip_code
end
