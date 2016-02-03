class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :softwares do |t|
      t.string :name
      t.string :asset_tag
      t.string :invoice
      t.string :cost
      t.date :purchase_date
      t.date :renewal_date
      t.string :licence_key
      t.integer :number_of_licences
      t.string :licence_type
      t.text :description
      t.text :note

      t.timestamps
    end
  end
end
