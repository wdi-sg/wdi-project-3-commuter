class AddColumnToCombo < ActiveRecord::Migration[5.0]
  def change
    add_column :combos, :user_id, :integer
    add_column :combos, :travel_id, :integer
    add_column :combos, :interest_id, :integer
  end
end
