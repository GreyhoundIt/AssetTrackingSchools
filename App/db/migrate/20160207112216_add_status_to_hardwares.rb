class AddStatusToHardwares < ActiveRecord::Migration
  def change
    add_column :hardwares, :status, :integer
  end
end
