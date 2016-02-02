class AddMdlToHardware < ActiveRecord::Migration
  def change
    add_column :hardwares, :mdl, :string
  end
end
