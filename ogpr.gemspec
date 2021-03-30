
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ogpr/version"

Gem::Specification.new do |spec|
  spec.name          = "ogpr"
  spec.version       = Ogpr::VERSION
  spec.authors       = ["hirakiuc"]
  spec.email         = ["hirakiuc@gmail.com"]

  spec.summary       = %q{a ruby library to fetch and parse OpenGraph protocol}
  spec.description   = %q{a ruby library to fetch and parse meta tags which represent OpenGraph protocol}
  spec.homepage      = 'https://github.com/hirakiuc/ogpr'
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.10"
  spec.add_development_dependency "sinatra", "~> 2.1"
  spec.add_development_dependency 'rubocop', '~> 1.12'
  spec.add_development_dependency "webmock", "~> 3.12"
  spec.add_development_dependency "simplecov", "~> 0.21.2"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 1.0"
  spec.add_dependency 'rest-client', '~> 2.1.0'
  spec.add_dependency 'nokogiri', '~> 1.11'
end
