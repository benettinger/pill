class AddUserToMedicines < ActiveRecord::Migration
  def change
    add_column :medicines, :user_id, :integer
    add_index :medicines, :user_id
  end
end
