# frozen_string_literal: true

require_relative "lib/irb/theme/nord/version"

Gem::Specification.new do |spec|
  spec.name = "irb-theme-nord"
  spec.version = Irb::Theme::Nord::VERSION
  spec.authors = ["Stanislav (Stas) Katkov"]
  spec.email = ["git@skatkov.com"]

  spec.summary = "Nord theme for Reline/IRB"
  spec.homepage = "https://github.com/skatkov/irb-theme-nord"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "irb"
  spec.add_dependency "reline", ">= 0.4.0"

  spec.add_development_dependency "standard", "~> 1.3"
end
