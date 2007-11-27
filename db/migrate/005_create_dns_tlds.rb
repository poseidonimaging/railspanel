class CreateDnsTlds < ActiveRecord::Migration
  def self.up
    create_table :dns_tlds do |t|
    end
  end

  def self.down
    drop_table :dns_tlds
  end
end
