class User
  include DataMapper::Resource
  
	property   :id,         Serial
	property   :deleted_at, ParanoidDateTime
	timestamps :at
  
  property  :first_name,  String, default: '' 
  property  :last_name,   String, default: ''
  property  :title,       String, default: ''
  property  :phone1,      String, default: ''
  property  :phone2,      String, default: ''
  property  :email,       String, default: ''
  property  :username,    String, default: ''
  property  :password,    String, default: ''
  
  property  :active,    Boolean, :default => true
  
  belongs_to  :customer, required: false
  
end