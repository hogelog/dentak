# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dentak/version"

Gem::Specification.new do |spec|
  spec.name = "dentak"
  spec.version = Dentak::VERSION
  spec.authors = ["hogelog"]

  spec.summary = "Simple interactive calculator program"
  spec.description = "Simple interactive calculator program with BigDecimal precision and formatting helpers."
  spec.homepage = "https://github.com/hogelog/dentak"
  spec.required_ruby_version = ">= 3.3.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
