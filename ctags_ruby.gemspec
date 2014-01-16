# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ctags_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "ctags_ruby"
  spec.version       = CtagsRuby::VERSION
  spec.authors       = ["Kristian Rasmussen"]
  spec.email         = ["kristian@iamkristian.com"]
  spec.description   = %q{Wrapper for ctags}
  spec.summary       = %q{WIll run ctags on your project and dependent gems.}
  spec.homepage      = "http://github.com/iamkristian/ctags_ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
