class AddManufacturerId < ActiveRecord::Migration
  def self.up
    add_column :model_names, :manufacturer_id, :integer
  end

  def self.down
    remove_column :model_names, :manufacturer_id
  end
end
