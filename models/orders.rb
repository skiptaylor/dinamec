class Order
  include DataMapper::Resource
  
	property   :id,         Serial
	property   :deleted_at, ParanoidDateTime
	timestamps :at
  
  property  :po_number,   String,   default: ""
  property  :comment,     String,   default: ""
  property  :status,      String,   default: "Requested"
  
  property  :machine_id,  Integer,  required: false
  
  belongs_to  :machine
  has n,      :items,   :constraint => :destroy
    
end