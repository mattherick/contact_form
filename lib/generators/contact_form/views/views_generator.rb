module ContactForm
  module Generators
    class ViewsGenerator < Rails::Generators::Base

      source_root File.expand_path("../../../../../app", __FILE__)

      desc <<-MSG
        Description:
        Copies ContactForm views into your application.
      MSG

      def copy_views
        directory "views", "app/views"
      end

    end
  end
end