class AddFeatureTypeToFeatures < ActiveRecord::Migration
  def self.up
    add_column :features, :feature_type, :integer
  end

  def self.down
    drop_column :features, :feature_type
  end
end
