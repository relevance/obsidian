Gem::Specification.new do |s|
  s.name = %q{obsidian}
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Relevance"]
  s.date = %q{2008-11-13}
  s.description = %q{It's metastable}
  s.email = %q{opensource@thinkrelevance.com}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
  s.files = ["History.txt", "LICENSE", "Manifest.txt", "README.rdoc", "Rakefile", "lib/obsidian.rb", "lib/obsidian/extensions/object.rb", "lib/obsidian/extensions/try.rb", "lib/obsidian/rails/helper_test.rb", "lib/obsidian/rails/model_update_tracker.rb", "lib/obsidian/spec.rb", "lib/obsidian/spec/map_spec_helper.rb", "lib/obsidian/spec/set_spec_helper.rb", "obsidian.gemspec", "test/obsidian_test.rb", "test/test_helper.rb", "test/units/obsidian/object_extensions_test.rb", "test/units/obsidian/rails/model_update_tracker_test.rb", "test/units/obsidian/spec/map_spec_helper_test.rb", "test/units/obsidian/spec/set_spec_helper_test.rb", "test/units/obsidian/spec_test.rb", "test/units/obsidian/try_test.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://opensource.thinkrelevance.com}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{thinkrelevance}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{It's metastable}
  s.test_files = ["test/obsidian_test.rb", "test/units/obsidian/object_extensions_test.rb", "test/units/obsidian/rails/model_update_tracker_test.rb", "test/units/obsidian/spec/map_spec_helper_test.rb", "test/units/obsidian/spec/set_spec_helper_test.rb", "test/units/obsidian/spec_test.rb", "test/units/obsidian/try_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 1.8.2"])
    else
      s.add_dependency(%q<hoe>, [">= 1.8.2"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.8.2"])
  end
end
