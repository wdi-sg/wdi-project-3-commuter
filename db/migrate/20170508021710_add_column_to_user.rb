class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :avatar, :string, :default => "image/upload/v1494502259/iegn3ze06oon6mrtgrb1.png"
  end
end
