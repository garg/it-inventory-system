class ChangeFeatureTypeType < ActiveRecord::Migration
  def self.up
    change_column :features, :feature_type, :string
  end

  def self.down
    change_column :features, :feature_type, :integer
  end
end
