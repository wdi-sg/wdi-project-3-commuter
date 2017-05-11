class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :avatar, :string, :default => "zpjntmesstnz0lpf176u"
  end
end
