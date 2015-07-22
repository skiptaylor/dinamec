class Item
  include DataMapper::Resource
  
	property   :id,         Serial
	property   :deleted_at, ParanoidDateTime
	timestamps :at
  
  property  :item,      String,   default: ""
  property  :quantity,  String,   default: ""
  
  property  :order_id,  Integer,  required: false
  
  belongs_to  :order
  
end