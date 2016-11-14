class NotifierMailer < ApplicationMailer
	# http://api.rubyonrails.org/classes/ActionMailer/Base.html
	# default from: 'no-reply@oram-portal.herokuapp.com',
 #          return_path: 'system@example.com'

    def incomplete_referrer_profile(referrer)
    	@account = referrer
    	mail(to: referrer.email, :subject => "Incomplete Profile")
    end
end
