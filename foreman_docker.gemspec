$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "foreman_docker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "foreman_docker"
  s.version     = ForemanDocker::VERSION
  s.authors     = ["Amos Beanri"]
  s.email       = ["abenari@redhat.com"]
  s.homepage    = "http://github.com/abenari/foreman_docker"
  s.summary     = "Provision and manage Docker containers and images from Foreman"
  s.description = "Provision and manage Docker containers and images from Foreman."

  s.add_development_dependency('rake')

  s.files = Dir["{app,config,db,lib,locale}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "fog"
  s.add_dependency "docker-api", "~> 1.8.0"

end