class AddPersonIdToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :person_id, :integer
  end
end
