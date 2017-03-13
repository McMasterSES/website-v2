class CreateExecPromotions < ActiveRecord::Migration[5.0]
  def change
    create_table :exec_promotions do |t|

      t.timestamps
    end
  end
end
