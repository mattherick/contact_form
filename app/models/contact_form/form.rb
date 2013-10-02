module ContactForm
	class Form

    include ActiveModel::Model
    
  	attr_accessor :name, :email, :message

  	validates :name, presence: true
  	validates :email, presence: true, email: true
  	validates :message, presence: true

	end
end