class DeleteOrderFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :order_id
  end
end
