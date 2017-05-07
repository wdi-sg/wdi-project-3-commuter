class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :interest_id
      t.integer :interested_id

      t.timestamps
    end

    add_index :relationships, :interest_id
    add_index :relationships, :interested_id
    add_index :relationships, [:interest_id, :interested_id], unique: true

  end
end
