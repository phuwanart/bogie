# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bogie/version'

Gem::Specification.new do |gem|
  gem.name          = "bogie"
  gem.version       = Bogie::VERSION
  gem.authors       = ["Phuwanart Larpmark"]
  gem.email         = ["neokain@gmail.com"]
  gem.description   = %q{Migrate legacy data}
  gem.summary       = %q{Gem for migarte legacy data}
  gem.homepage      = "https://github.com/neokain/bogie"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
