require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'echoe'
require 'lib/obsidian'

echoe = Echoe.new('obsidian', Obsidian::VERSION) do |p|
  p.rubyforge_name = "thinkrelevance"
  p.author = "Relevance"
  p.email = "opensource@thinkrelevance.com"
  p.summary = "It's metastable"
  p.description = "Bits of Ruby code we've found helpful for simplifying various tasks"
  p.url = "http://opensource.thinkrelevance.com"  
  p.rdoc_pattern = /^(lib|bin|ext)|txt|rdoc$/
  rdoc_template = `allison --path`.strip << ".rb"
  p.rdoc_template = rdoc_template
end

echoe.spec.add_development_dependency "echoe"
echoe.spec.add_development_dependency "allison"
echoe.spec.add_development_dependency "markaby"

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
 
