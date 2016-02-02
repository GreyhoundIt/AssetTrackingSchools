class AddManufacturerIdToHardwares < ActiveRecord::Migration
  def change
    add_column :hardwares, :manufacturer_id, :integer
  end
end
