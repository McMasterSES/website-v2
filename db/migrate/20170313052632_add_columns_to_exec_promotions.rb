class AddColumnsToExecPromotions < ActiveRecord::Migration[5.0]
  def change
    add_column :exec_promotions, :user_id, :string
  end
end
