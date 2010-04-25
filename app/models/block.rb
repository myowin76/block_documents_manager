class Block < ActiveRecord::Base
  attr_accessible :name, :postcode, :build_date
  
  has_many :block_documents
  
end
