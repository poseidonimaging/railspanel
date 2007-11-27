class DnsTld < ActiveRecord::Base
	# Tell ActiveRecord that zones has a foreign key that points to this
	# model.
	has_many :zones, :dependent => :destroy # Destroy dependent zones if you destroy a TLD.
end
