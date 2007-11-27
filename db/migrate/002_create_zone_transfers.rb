class CreateZoneTransfers < ActiveRecord::Migration
  def self.up
    create_table :zone_transfers do |t|
    	#        Name			Type	Null allowed?	Default
    	t.column :dns_zone_id,	:integer,	:null => false # DnsZone foreign key
		t.column :client,		:text,		:null => true
    end
  end

  def self.down
    drop_table :zone_transfers
  end
end
