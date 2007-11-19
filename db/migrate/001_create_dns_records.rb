class CreateDnsRecords < ActiveRecord::Migration
  def self.up
    create_table :dns_records do |t|
	#        Column Name    Column Type     Null Allowed?   Default Value
	t.column :zone,		:text,		:null => false
	t.column :host,		:text,		:null => false
	t.column :type,		:text,		:null => false
	t.column :data,		:text,		:null => false
	t.column :ttl,		:integer,	:null => false, :default => 180 # 3 hours
	t.column :mx_priority,	:text,		:null => true # only applies to MX records
	t.column :refresh,	:integer,	:null => false, :default => 28800 # 8 hours
	t.column :retry,	:integer,	:null => false, :default => 14400 # 4 hours
	t.column :expire,	:integer,	:null => false, :default => 604800 # 1 week
	t.column :minimum,	:integer,	:null => false, :default => 86400 # 1 day
	t.column :serial,	:integer,	:null => false, :default => 0, :limit => 20
	t.column :resp_person,	:text,		:null => true
	# This should probably not be NULL but I don't know how BIND DLZ writes to this field.
	t.column :primary_ns,	:text,		:null => true 
    end
  end

  def self.down
    drop_table :dns_records
  end
end
