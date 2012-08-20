require 'rails/generators/migration'

module ContactForm
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      
      source_root File.expand_path('../templates', __FILE__)
      desc "create initializer, config yml and locales"

      def copy_config
        copy_file "contact_form.yml", "config/contact_form.yml"
      end

      def copy_initializer
        copy_file "contact_form.rb", "config/initializers/contact_form.rb"
      end

      def copy_locales
        copy_file "contact_form.de.yml", "config/locales/contact_form.de.yml"
        copy_file "contact_form.en.yml", "config/locales/contact_form.en.yml"
      end

    end
  end
end