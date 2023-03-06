class DeleteUserFromAddresses < ActiveRecord::Migration[7.0]
  def change
    remove_column :addresses, :user_id
  end
end
