# frozen_string_literal: true

require_relative "lib/foodie/version"

Gem::Specification.new do |spec|
  spec.name = "foodie_hunt"
  spec.version = Foodie::VERSION
  spec.authors = ["Hunt Lin"]
  spec.email = ["hunt.lin@tes-tec.com"]

  spec.add_development_dependency "rspec", "~> 3.2"

  spec.add_dependency "activesupport"
  spec.add_dependency "thor"

  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"

  spec.summary = "this is a test."
  spec.description = "this is a test."
  spec.homepage = "https://uhuntu.net"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://uhuntu.net"
  spec.metadata["changelog_uri"] = "https://uhuntu.net"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
