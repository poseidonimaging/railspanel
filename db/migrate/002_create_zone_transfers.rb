class CreateZoneTransfers < ActiveRecord::Migration
  def self.up
    create_table :zone_transfers do |t|
    	#        Name		Type	Null allowed?	Default
    	t.column :zone,		:text,	:null => false
	t.column :client,	:text,	:null => true
    end
  end

  def self.down
    drop_table :zone_transfers
  end
end
