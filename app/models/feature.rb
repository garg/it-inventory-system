class Feature < ActiveRecord::Base
  belongs_to :item
  has_many :feature_types
end
