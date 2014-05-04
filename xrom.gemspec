# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xrom/version'

Gem::Specification.new do |spec|
  spec.name          = "xrom"
  spec.version       = Xrom::VERSION
  spec.authors       = ["shan chen"]
  spec.email         = ["samechen2009@gmail.com"]
  spec.description   = %q{A wrapper of baksmali/smali/apktool/dx etc for Android dex related hacking.}
  spec.summary       = %q{Easiest way to hack dex}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
