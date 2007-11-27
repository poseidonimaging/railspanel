class DnsController < ApplicationController
	# The index page!
	def index
		@tlds = DnsTld.find(:all)
	end
end
