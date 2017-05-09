class AddUserToTravels < ActiveRecord::Migration[5.0]
  def change
    add_reference :travels, :user, foreign_key: true
  end
end
