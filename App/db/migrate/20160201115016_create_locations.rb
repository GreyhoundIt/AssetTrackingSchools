class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :main_occupent
      t.string :group

      t.timestamps
    end
  end
end
