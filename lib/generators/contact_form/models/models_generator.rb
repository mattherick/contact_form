module ContactForm
  module Generators
    class ModelsGenerator < Rails::Generators::Base

      source_root File.expand_path("../../../../../app", __FILE__)

      desc <<-MSG
        Description:
        Copies ContactForm models into your application.
      MSG

      def copy_models
        directory "models", "app/models"
      end

    end
  end
end