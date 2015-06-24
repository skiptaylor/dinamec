class Part
	include DataMapper::Resource

	property   :id,         Serial
	property   :deleted_at, ParanoidDateTime
	timestamps :at
  
  property  :description,     String, default: ""
  property  :quantity,        String, default: ""
  property  :part_number,     String, default: ""
  property  :part,            String, default: ""
    
  belongs_to  :machine, required: false
  
end