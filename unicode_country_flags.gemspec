# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unicode_country_flags/version'

Gem::Specification.new do |spec|
  spec.name          = "unicode_country_flags"
  spec.version       = UnicodeCountryFlags::VERSION
  spec.authors       = ["Yanhao Yang"]
  spec.email         = ["yanhao.yang@gmail.com"]

  spec.summary       = %q{Generates unicode country flags from country code}
  spec.description   = %q{Generates unicode country flags from country code}
  spec.homepage      = "https://github.com/YanhaoYang/unicode_country_flags"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
