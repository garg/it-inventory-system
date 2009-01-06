class RemoveField < ActiveRecord::Migration
  def self.up
    remove_column :items, :field_id
  end

  def self.down
    add_column :items, :field_id, :integer
  end
end
