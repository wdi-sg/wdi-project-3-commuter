class AddColumnToTravel < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :mrt_line, :string
  end
end
