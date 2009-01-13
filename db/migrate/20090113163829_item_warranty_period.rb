class ItemWarrantyPeriod < ActiveRecord::Migration
  def self.up
    add_column :items, :warranty_period, :integer
  end

  def self.down
    remove_column :items, :warranty_period
  end
end
