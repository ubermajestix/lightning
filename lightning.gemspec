# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{lightning}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tyler Montgomery"]
  s.date = %q{2009-03-06}
  s.description = %q{}
  s.email = %q{tyler.a.montgomery@gmail.com}
  s.executables = ["lightning", "url_puller"]
  s.extra_rdoc_files = ["History.txt", "README.txt", "bin/lightning", "bin/url_puller"]
  s.files = ["History.txt", "README.txt", "Rakefile", "bin/lightning", "bin/url_puller", "lib/lightning.rb", "lib/lightning/parser.rb", "lib/lightning/post.rb", "lightning.gemspec", "spec/lightning_post_spec.rb", "spec/parsing_a_feed.rb", "spec/spec_helper.rb", "spec/test_feed.xml"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/ubermajestix/lightning}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{lightning}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{boom}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bones>, [">= 2.4.0"])
    else
      s.add_dependency(%q<bones>, [">= 2.4.0"])
    end
  else
    s.add_dependency(%q<bones>, [">= 2.4.0"])
  end
end
