class CreateCombos < ActiveRecord::Migration[5.0]
  def change
    create_table :combos do |t|

      t.timestamps
    end
  end
end
