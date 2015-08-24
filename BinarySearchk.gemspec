# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'BinarySearchk/version'

Gem::Specification.new do |spec|
  spec.name          = "BinarySearchk"
  spec.version       = BinarySearchk::VERSION
  spec.authors       = ["Kayode Adeniyi"]
  spec.email         = ["kayode.adeniyi@andela.co"]
  spec.summary       = %q{This gem builds a tree when an array is supplied and employs either DFS or BFS to search for any child}
  spec.description   = %q{This gem employs Breadth-First-Search or Depth-First-Search to search whether an element is in a tree. }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
