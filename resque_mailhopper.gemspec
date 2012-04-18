$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "resque_mailhopper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "resque_mailhopper"
  s.version     = ResqueMailhopper::VERSION
  s.authors     = ["Jun Lin"]
  s.email       = ["linjunpop@gmail.com"]
  s.homepage    = "https://github.com/linjunpop/resque_mailhopper"
  s.summary     = "A simple solution that uses ActiveRecord and Resque to queue, deliver and archive emails in Rails apps."
  s.description = "ResqueMailhopper extends Mailhopper to deliver emails asynchronously with Resque."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.markdown"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "railties", "~> 3.1"
  s.add_dependency "mailhopper", "~> 0.1.0"
  s.add_dependency "resque"

  s.add_development_dependency "sqlite3", ">= 1.3.4"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "resque_spec"
end
