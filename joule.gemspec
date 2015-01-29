# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name = "joule"
  s.summary = "A Ruby library for parsing bicycle powermeter data."
  s.description = "Joule parses and does some basic analyzing of powermeter data. Supported formats include SRM(.srm), Saris PowerTap(.csv), iBike(.csv), and Garmin(.tcx)"
  s.homepage = "http://github.com/rvizza/joule"

  s.version = "1.0.4"
  s.date = "2011-4-28"

  s.authors = ["Andrew Olson"]
  s.email = "anolson@gmail.com"
  s.license = "None"

  s.require_paths = ["lib"]
  s.files = Dir["lib/**/*"] + ["README.rdoc", "Rakefile"]
  s.extra_rdoc_files = ["README.rdoc"]

  s.has_rdoc = true
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Joule", "--main", "README.rdoc"]

  s.rubygems_version = "1.3.4"
  s.required_rubygems_version = Gem::Requirement.new(">= 1.2")
  s.add_dependency("nokogiri", ">= 1.4.1")
  s.add_dependency("fastercsv", ">=1.4.0")
  s.add_development_dependency "bundler", "~> 1.4"
  s.add_development_dependency "rake"
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]
end
