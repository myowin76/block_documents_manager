class BlockDocument < ActiveRecord::Base
  attr_accessible :block_id, :category_id, :expiry_date, :name, :document
  
  belongs_to :block
  belongs_to :category
  
  has_attached_file :document,
                      :url => "/documents/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/documents/:id/:style/:basename.:extension"
   #validates_attachment_size :document, :less_than => 10.megabytes
   
   #
   # it still have some bug on the PC, my RMagic hasent work properly, temporary
   #validates_attachment_content_type :document, :content_type => ['application/pdf']
   validates_attachment_presence :document    
   
   validates_presence_of :block_id, :category_id, :name, :document
   
   validate :meet_category_requirements?
    
	
	def meet_category_requirements?
     if self.category.expiry_date_required? 
       if self.expiry_date.nil? 
         errors.add_to_base("Expiry date is either blank or invalid" )
       end
     end
    end
	

end
