class Customer
	include DataMapper::Resource

	property   :id,         Serial
	property   :deleted_at, ParanoidDateTime
	timestamps :at
  
  property  :company,   String, default: ""
  property  :address1,  String, default: ""
  property  :address2,  String, default: ""
  property  :city,      String, default: ""
  property  :state,     String, default: ""
  property  :zip,       String, default: ""
  property  :website,   String, default: ""
  property  :phone,     String, default: ""
  property  :fax,       String, default: ""
  property  :industry,  String, default: ""
  
  property  :active,    Boolean, :default => true
  property  :customer,  Boolean, :default => true
  
  has n,    :users,     :constraint => :destroy
  
end