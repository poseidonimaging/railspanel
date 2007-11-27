class DnsZone < ActiveRecord::Base
	# Tell ActiveRecord about our foreign key (belongs_to) and
	# foreign keys that point here.
	belongs_to	:dns_tld
	has_many	:dns_records,		:dependent => :destroy # Destroy DNS records if we destroy a zone.
	has_many	:zone_transfers,	:dependent => :destroy # Destroy zone transfers if we destroy a zone.
end
