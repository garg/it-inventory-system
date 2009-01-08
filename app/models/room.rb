class Room < ActiveRecord::Base
  belongs_to :contact
  
  has_many :items
end
