class Machine
	include DataMapper::Resource

	property   :id,         Serial
	property   :deleted_at, ParanoidDateTime
	timestamps :at
  
  property  :name,      String, default: ""
    
  belongs_to  :company, required: false
  has n,      :parts,   required: false
  
end