# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ctags_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "ctags_ruby"
  spec.version       = CtagsRuby::VERSION
  spec.authors       = ["Kristian Rasmussen"]
  spec.email         = ["kr@iamkristian.com"]
  spec.description   = %q{Threaded wrapper for ctags}
  spec.summary       = %q{WIll run ctags in multiple threads on your projec\
  and dependent gems.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "rspec-core", "~> 2.14.7"
  spec.add_development_dependency "rake"
end
