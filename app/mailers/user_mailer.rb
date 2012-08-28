# encoding: UTF-8

class UserMailer < ActionMailer::Base
	default from: "noreply@mysugar.co.il"

	def launch_register(email, grouptype)
		@email = email

		case grouptype
		when "1"
			@grouptype = "שוגר דדי"
		when "2"
			@grouptype = "שוגר מאמי"
		when "3"
			@grouptype = "שוגר בייב"
		when "4"
			@grouptype = "שוגר בוי"
		end
		
		mail(:to => "mysugar <#{email}>", :subject => "תודה על ההתעניינות באתר mysugar")
	end
end
