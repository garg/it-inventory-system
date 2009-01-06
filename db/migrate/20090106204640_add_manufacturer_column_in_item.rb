class AddManufacturerColumnInItem < ActiveRecord::Migration
  def self.up
  
    add_column :items, :manufacturer_id, :integer
    
  end

  def self.down
  
    remove_column :items, :manufacturer_id
  
  end
end
