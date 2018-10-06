$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "lms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lms"
  s.version     = Lms::VERSION
  s.authors     = ["shravanc"]
  s.email       = ["shravan007.c@gmail.com"]
  s.homepage    = ""
  s.summary     = ": Summary of Lms."
  s.description = ": Description of Lms."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"
#  s.add_dependency "active_model_serializers"

  s.add_development_dependency "sqlite3"
end
