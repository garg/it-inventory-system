class Manufacturer < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :description

  has_many :model_names
  
  has_many :item
  
end
