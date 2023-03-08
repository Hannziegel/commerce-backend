class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :state
      t.string :city
      t.string :district
      t.string :street
      t.integer :house_number
      t.integer :zip_code
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
