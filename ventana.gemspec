# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ventana/version'

Gem::Specification.new do |spec|
  spec.name          = "ventana"
  spec.version       = Ventana::VERSION
  spec.authors       = ["Seba Gamboa"]
  spec.email         = ["me@sagmor.com"]
  spec.summary       = %q{Ventana makes window strings}
  spec.description   = %q{Ventana takes two dates and gives you a nice string with the window between those two dates}
  spec.homepage      = "https://github.com/sagmor/ventana"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "i18n"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
