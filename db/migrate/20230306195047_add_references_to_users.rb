class AddReferencesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :cart, null: false, foreign_key: true
    add_reference :users, :order, null: false, foreign_key: true
    add_reference :users, :address, null: false, foreign_key: true
  end
end
