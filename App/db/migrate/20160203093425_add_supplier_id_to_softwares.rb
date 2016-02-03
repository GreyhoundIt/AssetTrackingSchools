class AddSupplierIdToSoftwares < ActiveRecord::Migration
  def change
    add_column :softwares, :supplier_id, :integer
  end
end
