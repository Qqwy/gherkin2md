# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gherkin2md/version'

Gem::Specification.new do |spec|
  spec.name          = "gherkin2md"
  spec.version       = Gherkin2md::VERSION
  spec.authors       = ["Qqwy/W-M at Quinn"]
  spec.email         = ["qqwy@gmx.com"]

  spec.summary       = %q{Converts Gherkin files (the syntax of the Cucumber feature testing tool) to markdown.}
  spec.description   = %q{Converts Gherkin files (the syntax of the Cucumber feature testing tool) to markdown.}
  spec.homepage      = "http://"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
