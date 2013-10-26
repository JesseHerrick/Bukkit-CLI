# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bukkit/version'

Gem::Specification.new do |spec|
  spec.name          = "bukkit"
  spec.version       = Bukkit::VERSION
  spec.authors       = ["Jesse Herrick"]
  spec.email         = ["school@jessegrant.net"]
  spec.description   = %q{A command line wrapper for CraftBukkit.}
  spec.summary       = %q{A command line wrapper for CraftBukkit. Manage your server much easier.}
  spec.homepage      = "https://github.com/JesseHerrick/Bukkit-CLI"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # Runtime Dependencies
  spec.add_runtime_dependency('archive-zip')
  spec.add_runtime_dependency('colorize')
  spec.add_runtime_dependency('commander')
  spec.add_runtime_dependency('json')
  spec.add_runtime_dependency('launchy')

  # Dev Dependencies
  spec.add_development_dependency('bundler')
  spec.add_development_dependency('rake')
end