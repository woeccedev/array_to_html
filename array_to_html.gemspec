# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'array_to_html/version'

Gem::Specification.new do |spec|
  spec.name          = "array_to_html"
  spec.version       = ArrayToHtml::VERSION
  spec.authors       = ["Austin Davis"]
  spec.email         = ["woeccedev@gmail.com"]
  spec.description   = %q{A gem that converts a Ruby array to an HTML unordered list}
  spec.summary       = %q{Converts Ruby arrays to HTML Ul}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "htmlentities"

end
