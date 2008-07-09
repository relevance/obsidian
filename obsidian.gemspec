(in /Users/rsanheim/src/relevance/runcoderun/vendor/gems/obsidian-0.0.4)
Gem::Specification.new do |s|
  s.name = %q{obsidian}
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Relevance"]
  s.date = %q{2008-07-09}
  s.description = %q{It's metastable}
  s.email = %q{opensource@thinkrelevance.com}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "LICENSE", "Manifest.txt", "README.rdoc", "README.txt", "Rakefile", "lib/obsidian.rb", "lib/obsidian/rails/helper_test.rb", "lib/obsidian/rails/model_update_tracker.rb", "lib/obsidian/spec.rb", "lib/obsidian/spec/map_spec_helper.rb", "lib/obsidian/spec/set_spec_helper.rb", "test/obsidian_test.rb", "test/test_helper.rb", "test/units/obsidian/rails/model_update_tracker_test.rb", "test/units/obsidian/spec/map_spec_helper_test.rb", "test/units/obsidian/spec/set_spec_helper_test.rb", "test/units/obsidian/spec_test.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://opensource.thinkrelevance.com}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{thinkrelevance}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{It's metastable}
  s.test_files = ["test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end
