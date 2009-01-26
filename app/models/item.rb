class Item < ActiveRecord::Base
  validates_uniqueness_of :barcode
  validates_presence_of :manufacturer_id
  validates_presence_of :model_name_id
  validates_presence_of :room_id
  validates_presence_of :barcode


  has_many :features, :dependent => :destroy

  
  belongs_to :room
  
  belongs_to :manufacturer
  belongs_to :model_name
  
  

  
end
