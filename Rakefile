require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'hoe'
require 'lib/obsidian'

desc 'Default: run unit tests.'
task :default => :test

hoe = Hoe.new('obsidian', Obsidian::VERSION) do |p|
  p.rubyforge_name = "thinkrelevance"
  p.description = "It's metastable"
  p.changes = p.paragraphs_of('History.txt', 0..1).join("\n\n")
  p.name = 'obsidian'
  p.summary = "It's metastable"
  p.author = "Relevance"
  p.email = "opensource@thinkrelevance.com"
  p.url = "http://opensource.thinkrelevance.com"  
  p.rdoc_pattern = /^(lib|bin|ext)|txt|rdoc$/
end

# Override RDoc to use allison template, and also use our .rdoc README as the main page instead of the default README.txt
Rake::RDocTask.new(:docs) do |rd|
  gem "allison"
  gem "markaby"
  rd.main = "README.rdoc"
  # rd.options << '-d' if RUBY_PLATFORM !~ /win32/ and `which dot` =~ /\/dot/ and not ENV['NODOT']
  rd.rdoc_dir = 'doc'
  files = hoe.spec.files.grep(hoe.rdoc_pattern)
  files -= ['Manifest.txt']
  rd.rdoc_files.push(*files)

  title = "#{hoe.name}-#{hoe.version} Documentation"
  title = "#{hoe.rubyforge_name}'s " + title if hoe.rubyforge_name != hoe.name
end

desc 'Test obsidian.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

begin
  require 'rcov'
  require "rcov/rcovtask"

  namespace :coverage do
    rcov_output = ENV["CC_BUILD_ARTIFACTS"] || 'tmp/coverage'
    rcov_exclusions = %w{
    }.join(',')
  
    desc "Delete aggregate coverage data."
    task(:clean) { rm_f "rcov_tmp" }
  
    Rcov::RcovTask.new(:unit => :clean) do |t|
      t.test_files = FileList['test/**/*_test.rb']
      t.rcov_opts = ["--sort coverage", "--aggregate 'rcov_tmp'", "--html", "--rails", "--exclude '/Library'"]
      t.output_dir = rcov_output + '/unit'
    end
  
    desc "Generate and open coverage report"
    task(:all => [:unit]) do
      system("open #{rcov_output}/unit/index.html") if PLATFORM['darwin']
    end
  end
rescue LoadError
  if RUBY_PLATFORM =~ /java/
    puts 'running in jruby - rcov tasks not available'
  else
    puts 'sudo gem install rcov # if you want the rcov tasks'
  end
end
