class Item
  include DataMapper::Resource
  
	property   :id,         Serial
	property   :deleted_at, ParanoidDateTime
	timestamps :at
  
  property  :item,      String,   default: ""
  property  :quantity,  Integer,  default: ""
  
  property  :order_id,  Integer
  property  :part_id,   Integer
  
  belongs_to  :order
  belongs_to  :part
  
end