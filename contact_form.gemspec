$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "contact_form/version"

Gem::Specification.new do |s|
  s.name = "contact_form"
  s.version = ContactForm::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Matthias Frick"]
  s.email = ["matthias@frick-web.at"]
  s.homepage = "https://github.com/mattherick/contact_form"
  s.description = "A simple contact form for a contact page."
  s.summary = "contact_form-#{s.version}"
  s.rubyforge_project = "contact_form"
  
  s.add_dependency "rails", "~> 3.2.8"
  # s.add_dependency "jquery-rails"
  s.add_development_dependency "sqlite3"

  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib' 
end