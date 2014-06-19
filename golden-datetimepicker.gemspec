# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'golden/datetimepicker/version'

Gem::Specification.new do |spec|
  spec.name          = 'golden-datetimepicker'
  spec.version       = Golden::Datetimepicker::VERSION
  spec.authors       = ['Tse-Ching Ho']
  spec.email         = ['tsechingho@gmail.com']
  spec.summary       = %q{Integrate datetime pickers with Rails asset pipeline}
  spec.description   = %q{Integrate datetime pickers with Rails asset pipeline}
  spec.homepage      = 'https://github.com/goldenio/golden-datetimepicker'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
