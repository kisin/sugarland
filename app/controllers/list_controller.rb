class ListController < ApplicationController
	before_filter :authenticate

	def index
		@leads = Lead.all
	end

private
	def authenticate
		if Rails.env.production?
			authenticate_or_request_with_http_basic do |username, password|
				username == "sugar" && password == "wsx234"
			end 			
		end
	end

end
