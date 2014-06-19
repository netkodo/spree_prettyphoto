# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_prettyphoto'
  s.version     = '1.2.0'
  s.summary     = 'PrettyPhoto js plugin ready to use with Spree'
  s.description = 'PrettyPhoto js plugin integrated into Spree'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Martin Rychlovsky'
  s.authors = [ 'Martin Rychlovsky' ]
  # s.email     = 'rychlovsky@gravastar.cz'
  s.homepage  = 'http://www.gravastar.cz'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.3.3.beta'

  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sqlite3'
end
