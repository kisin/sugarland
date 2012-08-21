class UserMailer < ActionMailer::Base
	default from: "noreply@mysugar.co.il"

	def launch_register(email, grouptype)
		@email = email
		@grouptype = grouptype
		
	end
end
