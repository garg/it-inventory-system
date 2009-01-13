class ItemPurchaseDate < ActiveRecord::Migration
  def self.up
    add_column :items, :purchase_date, :date
  end

  def self.down
    remove_column :items, :purchase_date
  end
end
