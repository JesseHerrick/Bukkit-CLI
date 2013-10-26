# -*- encoding: utf-8 -*-
# stub: archive-zip 0.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "archive-zip"
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeremy Bopp"]
  s.date = "2013-03-25"
  s.description = "Archive::Zip provides a simple Ruby-esque interface to creating, extracting, and\nupdating ZIP archives.  This implementation is 100% Ruby and loosely modeled on\nthe archive creation and extraction capabilities of InfoZip's zip and unzip\ntools.\n"
  s.email = ["jeremy@bopp.net"]
  s.homepage = "http://github.com/javanthropus/archive-zip"
  s.require_paths = ["lib"]
  s.rubyforge_project = "archive-zip"
  s.rubygems_version = "2.1.8"
  s.summary = "Simple, extensible, pure Ruby ZIP archive support."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<io-like>, [">= 0.3.0"])
      s.add_development_dependency(%q<rake>, [">= 0.9.0"])
      s.add_development_dependency(%q<mspec>, [">= 1.5.12"])
    else
      s.add_dependency(%q<io-like>, [">= 0.3.0"])
      s.add_dependency(%q<rake>, [">= 0.9.0"])
      s.add_dependency(%q<mspec>, [">= 1.5.12"])
    end
  else
    s.add_dependency(%q<io-like>, [">= 0.3.0"])
    s.add_dependency(%q<rake>, [">= 0.9.0"])
    s.add_dependency(%q<mspec>, [">= 1.5.12"])
  end
end
