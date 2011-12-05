# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','rcalc_version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'rcalc'
  s.version = Rcalc::VERSION
  s.author = 'Juanje Ojeda'
  s.email = 'juanje.ojeda@gmail.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A simple command line calculator'
# Add your other files here if you make them
  s.files = %w(
bin/rcalc
lib/rcalc_version.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','rcalc.rdoc']
  s.rdoc_options << '--title' << 'rcalc' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'rcalc'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba', '~> 0.4.6')
end
