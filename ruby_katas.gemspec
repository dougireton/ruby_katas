# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ruby_katas/version"

Gem::Specification.new do |s|
  s.name        = "ruby_katas"
  s.version     = RubyKatas::VERSION
  s.authors     = ["Doug Ireton"]
  s.email       = ["dougireton@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Ruby katas}
  s.description = %q{Practice Ruby by completing small katas TDD-style}
  s.license     = "Apache 2.0"

  s.rubyforge_project = "ruby_katas"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_runtime_dependency "rspec", "~> 2.14"
end
