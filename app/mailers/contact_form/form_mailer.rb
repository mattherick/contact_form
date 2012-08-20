# coding: utf-8
module ContactForm
	class FormMailer < ActionMailer::Base
		default from: CONTACT_FORM_CONFIG["form_mailer"]["default_from"]
  
  	def auto_reply(form)
    	@form = form
    	mail(to: form.email, subject: I18n.t(".contact_form.mailers.form_mailer.auto_reply_subject"))
  	end
  
  	def new_contact(form)
    	@form = form
    	mail(to: CONTACT_FORM_CONFIG["form_mailer"]["new_contact_to"], subject: I18n.t(".contact_form.mailers.form_mailer.new_contact_subject"))
 		end

	end
end