class AddSupplierIdToHardwares < ActiveRecord::Migration
  def change
    add_column :hardwares, :supplier_id, :integer
  end
end
