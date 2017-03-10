class AddAdminsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_president, :boolean
    add_column :users, :is_exec, :boolean
  end
end
