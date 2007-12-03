class CreateDnsTlds < ActiveRecord::Migration
  def self.up
    create_table :dns_tlds do |t|
    	#	Column Name	Type		Nulls Allowed?	Extra
    	t.column :extension,	:string,	:null => false,	:limit => 4 # only 8 characters tops for a TLD
    end
  end

  def self.down
    drop_table :dns_tlds
  end
end
