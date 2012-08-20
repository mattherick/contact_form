module ContactForm
  module ApplicationHelper

  	def flash_errors_and_notices
  		output = ""
  		if flash[:notice]
  			output += "<div class='notice'>#{flash[:notice]}</div>"
  		end
  		if flash[:error]
  			output += "<div class='error'>#{flash[:error]}</div>"
  		end
  		raw output
  	end

  end
end