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
  s.summary     = ""
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "< 5.1"

  s.add_development_dependency "sqlite3"
end
