class CreateBlocks < ActiveRecord::Migration
  def self.up
    create_table :blocks do |t|
      t.string :name
      t.string :postcode
      t.date :build_date
      t.timestamps
    end
    
    
  	Block.create(:name => 'Parks Polas', :postcode =>'AH1 7HB', :build_date=> '01/08/1984')
  	Block.create(:name => 'Crow Andreet ', :postcode =>'AA5 0EH', :build_date=> '06/12/1977')
  	Block.create(:name => 'Couse Gose ', :postcode =>'EA9 4HA', :build_date=> '06/12/1977')
  	Block.create(:name => 'Manninate Jerming', :postcode =>'AE5 3EH', :build_date=> '06/12/1977')
  	Block.create(:name => 'Stremy Manning', :postcode =>'BB5 2EB', :build_date=> '06/12/1977')
  	Block.create(:name => 'Parrace Grave', :postcode =>'EH2 6EA', :build_date=> '06/12/1977')
  	Block.create(:name => 'Stana Hardens', :postcode =>'BB0 4HA', :build_date=> '06/12/1977')
  	Block.create(:name => 'Pardent Plansions', :postcode =>'EA9 9BH', :build_date=> '06/12/1977')
  	Block.create(:name => 'Parace Bark', :postcode =>'BA4 6BB', :build_date=> '06/12/1977')
  	Block.create(:name => 'Junsword Bardens', :postcode =>'BE6 2BA', :build_date=> '06/12/1977')
  	Block.create(:name => 'Milling Hourt', :postcode =>'HE9 2HE', :build_date=> '06/12/1977')
  	Block.create(:name => 'Bello Parcour', :postcode =>'AH5 2HA', :build_date=> '06/12/1977')
  	Block.create(:name => 'Garand Terrow', :postcode =>'AH8 6HE', :build_date=> '06/12/1977')
  	Block.create(:name => 'Croswick Parrad', :postcode =>'BB5 7AH', :build_date=> '06/12/1977')
  	Block.create(:name => 'Charf Shates', :postcode =>'AB5 7BB', :build_date=> '06/12/1977')
  	Block.create(:name => 'Pardens Omegens', :postcode =>'BB0 0BB', :build_date=> '06/12/1977')
  	Block.create(:name => 'Pemberrow Quardens', :postcode =>'EE4 7BA', :build_date=> '06/12/1977')
  	Block.create(:name => 'Yortlas Shoor', :postcode =>'BA2 0HH', :build_date=> '06/12/1977')
  	Block.create(:name => 'Warcour Drimrow', :postcode =>'EB4 0BH', :build_date=> '06/12/1977')
  	Block.create(:name => 'Chad Polannia', :postcode =>'AE7 0EB ', :build_date=> '06/12/1977')
  	
  end
  
  def self.down
    drop_table :blocks
  end
end
