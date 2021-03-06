# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/fizzbuzz/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-fizzbuzz"
  spec.version       = Ruboty::Fizzbuzz::VERSION
  spec.authors       = ["Tatsuya Toyoda"]
  spec.email         = ["b8eansatz@gmail.com"]
  spec.summary       = %q{foo}
  spec.description   = %q{bar}
  spec.homepage      = "https://github.com/b8eansatz"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
