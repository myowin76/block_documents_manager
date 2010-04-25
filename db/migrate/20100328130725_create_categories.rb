class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :description
      t.boolean :expiry_date_required
      t.boolean :build_date_depended
	  t.date :before_build_date
      t.timestamps
    end
    
    Category.create(:description => 'Management Agreement', :expiry_date_required => false, :build_date_depended => false, :before_build_date=> '09/02/1999')
    Category.create(:description => 'Fire Risk Assessment', :expiry_date_required => true, :build_date_depended => false, :before_build_date=> '09/02/1979' )
    Category.create(:description => 'Asbestos Survey', :expiry_date_required => false, :build_date_depended => true, :before_build_date =>'09/02/2002')

  end
  
  def self.down
    drop_table :categories
  end
end
