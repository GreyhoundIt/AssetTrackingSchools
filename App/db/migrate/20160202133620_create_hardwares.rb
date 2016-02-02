class CreateHardwares < ActiveRecord::Migration
  def change
    create_table :hardwares do |t|
      t.string :name
      t.string :asset_tag
      t.string :serial_number
      t.text :description
      t.text :note
      t.string :cost
      t.date :purchase_date
      t.date :warranty_end_date
      t.date :eol

      t.timestamps
    end
  end
end
