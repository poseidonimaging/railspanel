class AddQueryCount < ActiveRecord::Migration
  def self.up
  	# Adds an INT(32) column to store the number of times this query
	# has been accessed
  	add_column :dns_records, :query_count, :integer, :limit => 32
  end

  def self.down
  	remove_column :dns_records, :query_count
  end
end
