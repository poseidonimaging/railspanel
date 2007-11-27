class DnsRecord < ActiveRecord::Base
	# Tell ActiveRecord about our foreign key.
	belongs_to :dns_zone
end
