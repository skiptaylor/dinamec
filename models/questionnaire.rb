class Questionnaire
	include DataMapper::Resource

	property   :id,         Serial
	property   :deleted_at, ParanoidDateTime
	timestamps :at
  
  property  :company,     String, default: ""
  property  :contact,     String, default: ""
  property  :department,  String, default: ""
  property  :address1,    String, default: ""
  property  :address2,    String, default: ""
  property  :city,        String, default: ""
  property  :state,       String, default: ""
  property  :zip,         String, default: ""
  property  :phone1,      String, default: ""
  property  :phone2,      String, default: ""
  property  :email,       String, default: ""
  
  property  :instructions,  Text,   default: ""
  property  :temperature,   String, default: ""
  property  :day,           String, default: ""
  property  :week,          String, default: ""
  property  :process,       Text,   default: ""
  property  :issues,        Text,   default: ""
  property  :pressure,      String, default: ""
  property  :psi,           String, default: ""
  property  :voltage_v,     String, default: ""
  property  :voltage_hz,    String, default: ""
  property  :msds,          String, default: ""
    
  property  :gas,    Boolean, :default => false
  property  :air,    Boolean, :default => false
  
  property  :casting_name,    String, default: ""
  property  :alloy,           String, default: ""
  property  :qty_day,         String, default: ""
  property  :dem_length,      String, default: ""
  property  :dem_width,       String, default: ""
  property  :dem_height,      String, default: ""
  property  :casting_weight,  String, default: ""
  property  :core_weight,     String, default: ""
  property  :sand,            String, default: ""
  
  property  :dem_measure,     String, default: ""
  property  :casting_measure, String, default: ""
  property  :core_measure,    String, default: ""
  
end

