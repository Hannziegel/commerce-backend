class AddInvetoryToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :inventory, null: false, foreign_key: true
  end
end
