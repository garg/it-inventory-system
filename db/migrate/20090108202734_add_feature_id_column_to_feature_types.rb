class AddFeatureIdColumnToFeatureTypes < ActiveRecord::Migration
  def self.up
    add_column :feature_types, :feature_id, :integer
  end

  def self.down
    remove_column :feature_types, :feature_id
  end
end
