class DnsController < ApplicationController
	layout "default"

	# The index page!
	def index
		@tlds = DnsTld.find(:all)
	end

	# Create Top Level Domain
	def create_tld
		@errors = []
		
		# Data processing occurs in POST
		if request.get?
			# default @dns_tld object
			@dns_tld = { :extension => nil }
			render
		elsif request.post?
			@dns_tld = params[:dns_tld]

			# form validations
			if @dns_tld[:extension].empty?
				@errors << "No top level domain was entered."
			end
			if !@dns_tld[:extension].empty? && @dns_tld[:extension].length < 3
				@errors << "The top level domain entered was not long enough."
			end
			
			# if any errors, render the page again for correction, otherwise create
			# the TLD and redirect to the index page.
			if @errors.length > 0
				render
			else
				DnsTld.create(:extension => @dns_tld[:extension])
				redirect_to :action => "index"
			end
		end
	end
end
