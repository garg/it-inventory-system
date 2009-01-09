class ChangeColumnModelIdInItem < ActiveRecord::Migration
  def self.up
    rename_column :items, :model_id, :model_name_id
  end

  def self.down
    rename_column :items, :model_name_id, :model_id
  end
end
