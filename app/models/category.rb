class Category < ActiveRecord::Base
  attr_accessible :description, :expiry_date_required, :build_date_depended, :before_build_date
  
  has_many :block_documents
  
  
  
end
