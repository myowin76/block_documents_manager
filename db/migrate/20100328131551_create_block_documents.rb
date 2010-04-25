class CreateBlockDocuments < ActiveRecord::Migration
  def self.up
    create_table :block_documents do |t|
      t.integer :block_id
      t.integer :category_id
      t.date :expiry_date
      #t.date :before_build_date
      t.string :name
      t.timestamps
    end
    
    add_index :block_documents, :block_id
 	  add_index :block_documents, :category_id
  end
  
  def self.down
    drop_table :block_documents
  end
end
