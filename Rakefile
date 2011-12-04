require 'rake/clean'
require 'rubygems'
require 'rake/gempackagetask'
require 'rdoc/task'

Rake::RDocTask.new do |rd|
  rd.main = "README.rdoc"
  rd.rdoc_files.include(
                        "README.rdoc",
                        "lib/**/*.rb",
                        "bin/**/*",
                        "features/**/*"
                       )
  rd.title = 'Rcalc: A simple command line calculator'
end

spec = eval(File.read('rcalc.gemspec'))

Rake::GemPackageTask.new(spec) do |pkg|
end

require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/tc_*.rb']
end

require 'cucumber'
require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty -x"
  t.fork = false
end

task :default => :test
