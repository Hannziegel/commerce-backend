class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.float :price
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
