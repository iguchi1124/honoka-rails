$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "honoka_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "honoka-rails"
  s.version     = HonokaRails::VERSION
  s.authors     = ["Shota Iguchi"]
  s.email       = ["e.iguchi1124@gmail.com"]
  s.homepage    = "https://github.com/iguchi1124/honoka-rails"
  s.summary     = "To mount Honoka a simple bootstrap-theme on rails."
  s.description = "To mount Honoka on rails. Honoka is a simple and friendly japanese bootstrap-theme."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_development_dependency 'capybara', '>= 2.5.0'
  s.add_development_dependency 'poltergeist'

  s.add_development_dependency 'actionpack', '>= 4.1.5'
  s.add_development_dependency 'activesupport', '>= 4.1.5'
  s.add_development_dependency 'json', '>= 1.8.1'
  s.add_development_dependency 'sprockets-rails', '>= 2.1.3'
  s.add_development_dependency 'jquery-rails', '>= 3.1.0'
  s.add_development_dependency 'uglifier'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'coffee-rails'
end
