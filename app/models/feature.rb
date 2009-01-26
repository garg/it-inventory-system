class Feature < ActiveRecord::Base


  validates_uniqueness_of :item_id, :scope => [:feature_type]


  belongs_to :item
  has_many :feature_types
end
