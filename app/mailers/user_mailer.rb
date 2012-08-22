# encoding: UTF-8

class UserMailer < ActionMailer::Base
	default from: "noreply@mysugar.co.il"

	def launch_register(email, grouptype)
		@email = email

		case grouptype
		when "1"
			@grouptype = "אבא סוכר"
		when "2"
			@grouptype = "אמא סוכר"
		when "3"
			@grouptype = "בחורת סוכר"
		when "4"
			@grouptype = "בחור סוכר"
		end
		
		mail(:to => "mysugar <#{email}>", :subject => "תודה על ההתעניינות באתר mysugar")
	end
end
