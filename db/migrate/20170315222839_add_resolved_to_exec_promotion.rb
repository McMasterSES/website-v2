class AddResolvedToExecPromotion < ActiveRecord::Migration[5.0]
    def change
        add_column :exec_promotions, :resolved, :boolean, default: false
    end
end
