module ContactForm
  module Generators
    class MailersGenerator < Rails::Generators::Base

      source_root File.expand_path("../../../../../app", __FILE__)

      desc <<-MSG
        Description:
        Copies ContactForm mailers into your application.
      MSG

      def copy_mailers
        directory "mailers", "app/mailers"
      end

    end
  end
end