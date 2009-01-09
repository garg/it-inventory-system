class ChangeColumnUniqueInItems < ActiveRecord::Migration
  def self.up
    rename_column :items, :unique, :barcode
  end

  def self.down
    rename_column :items, :barcode, :unique
  end
end
