class HomeController < ApplicationController
	def index
	end

	def new
		@lead = Lead.new

		respond_to do |format|
			format.json { render :json => @lead } 	
		end
	end

	def create
		@lead = Lead.new(:email => params[:email], :usertype => params[:usertype])

		respond_to do |format|
			if @lead.save
				format.js
			else
				format.js
			end
		end
	end

end
