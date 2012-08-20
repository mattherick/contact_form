module ContactForm
  module Generators
    class AllGenerator < Rails::Generators::Base

      source_root File.expand_path("../../../../../app", __FILE__)

      desc <<-MSG
        Description:
        Copies all ContactForm files into your application.
      MSG

      def copy_all
      	generate "contact_form:controllers"
      	generate "contact_form:mailers"
      	generate "contact_form:models"
      	generate "contact_form:views"
      end

    end
  end
end