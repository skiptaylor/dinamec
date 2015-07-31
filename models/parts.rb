class Part
	include DataMapper::Resource

	property   :id,         Serial
	property   :deleted_at, ParanoidDateTime
	timestamps :at
  
  property  :description,     String,   default: ""
  property  :suggested_qty,   String,   default: ""
  property  :part_number,     String,   default: ""
  property  :part,            String,   default: ""
  
  property  :machine_id,  Integer, required: false
    
  belongs_to  :machine
  has n,      :items,    :constraint => :destroy
  
end