$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "param_keys_conv/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "param_keys_conv"
  spec.version     = ParamKeysConv::VERSION
  spec.authors     = ["tabakazu"]
  spec.email       = ["tkazz.bd1@gmail.com"]
  spec.homepage    = "https://github.com/tabakazu"
  spec.summary     = "Strong parameter keys converter."
  spec.description = "Add string case converter to Ruby on Rails strong parameter keys."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.1"

  spec.add_development_dependency "sqlite3"
end
