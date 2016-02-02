class RemoveMainOccupentFromLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :main_occupent
  end
end
