# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|

  s.name = %q{pivotal-tracker-api}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Roman Gonzalez"]
  s.date = %q{2009-03-12}
  s.email = %q{romanandreg@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["lib/pivotal_tracker.rb", "lib/pivotal_tracker_api.rb", "README.rdoc", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/roman/pivotal-tracker-api}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby Library for interacting with PivotalTracker API}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<activeresource>, ["~> 2.2.2"])
    else
      s.add_dependency(%q<activeresource>, ["~> 2.2.2"])
    end
  else
    s.add_dependency(%q<activeresource>, ["~> 2.2.2"])
  end
end
