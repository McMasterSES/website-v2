class AddReasonToExec < ActiveRecord::Migration[5.0]
  def change
    add_column :exec_promotions, :reason, :text
  end
end
