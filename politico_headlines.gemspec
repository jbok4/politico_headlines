# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'politico_headlines/version'

Gem::Specification.new do |spec|
  spec.name          = "politico_headlines"
  spec.version       = PoliticoHeadlines::VERSION
  spec.authors       = ["Jaclyn Ciringione"]
  spec.email         = ["jbok4@aol.com"]

  spec.summary       = %q{Latest headlines Politico.}
  spec.description   = %q{Grabs the latest headlines from the Politico Website to quickly keep you up to date on the latest political news.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($\)
  spec.executables   = ["politico-headlines"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.name          = "politico_headlines"
  spec.require_paths = ["lib", "lib/politico_headlines"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
