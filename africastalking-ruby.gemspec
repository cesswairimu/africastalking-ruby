# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'africastalking/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "africastalking-ruby"
  spec.version       = Africastalking::Ruby::VERSION
  spec.authors       = ["Ian Juma"]
  spec.email         = ["ijuma@africastalking.com"]

  spec.summary       = %q{Official AfricasTalking Ruby API wrapper}
  spec.description   = %q{A Ruby library for communicating with the AfricasTalking REST API}
  spec.homepage      = "https://github.com/AfricasTalkingLtd/africastalking-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubygems"
  spec.add_dependency "net/http"
  spec.add_dependency "uri"
  spec.add_dependency "json"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end