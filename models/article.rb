class Article
  include DataMapper::Resource
  
  timestamps :at, :on
  property   :deleted_at, ParanoidDateTime
  property 	 :id,         Serial
  
  property :date,     Date
  property :title,    Text
  property :author,   String
  property :content,  Text
  
  property :active,   Boolean, default: true
  
end
