class CreateDnsRecords < ActiveRecord::Migration
	
	# Creates the table structure. You will notice it points to foreign keys that don't exist yet
	# in order. This is because I didn't like the original schema, so I reverted it, and I'm 
	# redoing it. 
	def self.up
		create_table :dns_records do |t|
			#        Column Name    Column Type     Null Allowed?   Default Value
			t.column :dns_zone_id,	:integer,		:null => false # foreign key for DnsZones
			t.column :host,			:string,		:null => false, :default => "@"
			t.column :ttl,			:integer,		:null => false,	:default => 180 # 3 hours
			t.column :type,			:string,		:null => false,	:limit => 10 # only need 10 chars
			t.column :mx_priority,	:string,		:null => true,	:limit => 10 # only need 10 chars; also not everything is a MX record :)
			t.column :data,			:string,		:null => false
			t.column :created_at,	:timestamp,		:null => false # Automagically gets set by Rails
			t.column :updated_at,	:timestamp,		:null => false # Automagically gets set by Rails
		end
	end

	def self.down
		drop_table :dns_records
	end
end
