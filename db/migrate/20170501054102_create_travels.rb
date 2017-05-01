class CreateTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :travels do |t|
      t.string :start_route
      t.string :end_route
      t.string :timeslot

      t.timestamps
    end
  end
end
