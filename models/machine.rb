class Machine
	include DataMapper::Resource

	property   :id,         Serial
	property   :deleted_at, ParanoidDateTime
	timestamps :at
  
  property  :name,        String, default: ""
  
  property  :part_id,     Integer, required: false
  property  :company_id,  Integer, required: false
   
  belongs_to  :company
  has n,      :parts,     :constraint => :destroy
  has n,      :orders,    :constraint => :destroy
  
end