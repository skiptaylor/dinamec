class Part
	include DataMapper::Resource

	property   :id,         Serial
	property   :deleted_at, ParanoidDateTime
	timestamps :at
  
  property  :description,     String, default: ""
  property  :quantity,        String, default: ""
  property  :part_number,     String, default: ""
  property  :part,            String, default: ""
  
  property  :machine_id,  Integer, required: false
    
  belongs_to  :machine
  
end

class Order
  include DataMapper::Resource
  
	property   :id,         Serial
	property   :deleted_at, ParanoidDateTime
	timestamps :at
  
  property  :po_number,  String,   default: ""
  property  :comment,    String,   default: ""
  
  property  :machine_id,  Integer,  required: false
  
  belongs_to  :machine
  has n,      :items,   :constraint => :destroy
    
end

class Item
  include DataMapper::Resource
  
	property   :id,         Serial
	property   :deleted_at, ParanoidDateTime
	timestamps :at
  
  property  :item,      String,   default: ""
  property  :quantity,  Integer,  required: false
  
  property  :order_id,  Integer,  required: false
  
  belongs_to  :order
  
end