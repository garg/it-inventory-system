class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :model_id
      t.integer :room_id
      t.integer :unique
      t.integer :field_id

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
