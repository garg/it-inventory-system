class Item < ActiveRecord::Base
  has_many :features
  
  belongs_to :room
  
  belongs_to :manufacturer
end
