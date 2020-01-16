class UserMailer < ActionMailer::Base
	default :from => "noreply@gmail.com"

	def registration_confirmation(user)
		@user = user
		mail(:to => "#{user.full_name} <#{user.email}>", :subject => "Confirmer votre inscription s'il vous plaît")
	end