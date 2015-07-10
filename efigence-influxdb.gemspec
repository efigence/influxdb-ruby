# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'influxdb/version'

Gem::Specification.new do |spec|
  spec.name          = "efigence-influxdb"
  spec.version       = InfluxDB::VERSION
  spec.authors       = ["Jacek Grzybowski", "Todd Persen"]
  spec.email         = ["jgrzybowski@efigence.com"]
  spec.description   = %q{This is a fork of official Ruby library for InfluxDB meant for v0.9.x support.}
  spec.summary       = %q{Ruby library for InfluxDB.}
  spec.homepage      = "https://github.com/efigence/influxdb-ruby/tree/support_v0.9.x"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "json"
  spec.add_runtime_dependency "cause"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0.0"
  spec.add_development_dependency "webmock"
end
