class AddReferencesToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :inventory, null: false, foreign_key: true
    add_reference :products, :category, null: false, foreign_key: true
  end
end
