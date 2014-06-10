# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require './version'

Gem::Specification.new do |spec|
  spec.name          = "SidekiqBatch"
  spec.version       = SidekiqBatch::VERSION
  spec.authors       = ["Tom Davies"]
  spec.email         = ["tom@brainyatom.com"]
  spec.description   = %q{A simple way to manage batches of Sidekiq jobs using only Redis and Sidekiq as dependencies.}
  spec.summary       = %q{A simple way to manage batches of Sidekiq jobs using only Redis and Sidekiq as dependencies.}
  spec.homepage      = "https://github.com/brainyatom/sidekiq-batch"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
