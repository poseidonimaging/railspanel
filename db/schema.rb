# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 2) do

  create_table "dns_records", :force => true do |t|
    t.column "zone",        :text,                  :default => "",     :null => false
    t.column "host",        :text,                  :default => "",     :null => false
    t.column "type",        :text,                  :default => "",     :null => false
    t.column "data",        :text,                  :default => "",     :null => false
    t.column "ttl",         :integer,               :default => 180,    :null => false
    t.column "mx_priority", :text
    t.column "refresh",     :integer,               :default => 28800,  :null => false
    t.column "retry",       :integer,               :default => 14400,  :null => false
    t.column "expire",      :integer,               :default => 604800, :null => false
    t.column "minimum",     :integer,               :default => 86400,  :null => false
    t.column "serial",      :integer, :limit => 20, :default => 0,      :null => false
    t.column "resp_person", :text
    t.column "primary_ns",  :text
  end

  create_table "zone_transfers", :force => true do |t|
    t.column "zone",   :text, :default => "", :null => false
    t.column "client", :text
  end

end
