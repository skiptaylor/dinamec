class Contact
  include DataMapper::Resource
  
  timestamps :at, :on
  property   :deleted_at, ParanoidDateTime
  property 	 :id,         Serial
  
  property :name,         String, default: ""
  property :company,      String, default: ""
  property :email,        String, default: ""
  property :phone,        String, default: ""
  property :comment,      Text
  property :description,  Text
  
  property :archive,      Boolean, default: true
  
end
