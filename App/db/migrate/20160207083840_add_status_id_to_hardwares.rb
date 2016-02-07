class AddStatusIdToHardwares < ActiveRecord::Migration
  def change
    add_column :hardwares, :status_id, :integer
  end
end
