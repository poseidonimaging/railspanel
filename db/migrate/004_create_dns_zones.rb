class CreateDnsZones < ActiveRecord::Migration
  def self.up
    create_table :dns_zones do |t|
		#		 Column Name	Type		Null Allowed?
		t.column :dns_tld_id,	:integer,	:null => false # DnsTld foreign key
		t.column :name,			:string,	:null => false # zone name (e.g. ignition-project)
		t.column :comment,		:text,		:null => true # optional comment message

		# SOA fields in order (used to build the SOA, which keeps the records table full of just records and not SOA records)
		t.column :primary_ns,	:string,	:null => false # Primary name server
		t.column :resp_person,	:string,		:null => false, :default => "root.localhost."
		t.column :serial,		:integer,	:null => false, :default => 0, :limit => 20
		t.column :refresh,		:integer,	:null => false, :default => 28800 # 8 hours
		t.column :retry,		:integer,	:null => false, :default => 14400 # 4 hours
		t.column :expire,		:integer,	:null => false, :default => 604800 # 1 week
		t.column :minimum,		:integer,	:null => false, :default => 86400 # 1 day
    end
  end

  def self.down
    drop_table :dns_zones
  end
end
