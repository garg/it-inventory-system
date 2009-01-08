class CreateFeatures < ActiveRecord::Migration
  def self.up
    create_table :features do |t|
      t.integer :item_id
      t.string :information

      t.timestamps
    end
  end

  def self.down
    drop_table :features
  end
end
