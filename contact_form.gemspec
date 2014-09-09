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
  s.licenses = ['MIT']
  s.rubyforge_project = "contact_form"
  
  s.add_dependency "rails", "~> 4.1.0"
  s.add_dependency "jquery-rails"
  s.add_dependency "i18n"
  s.add_dependency "mail"
  s.add_development_dependency "sqlite3"

#  s.files = `git ls-files`.split("\n")
  
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  
  s.executables = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib' 
end