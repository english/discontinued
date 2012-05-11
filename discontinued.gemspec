# -*- encoding: utf-8 -*-
require File.expand_path('../lib/discontinued/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jamie English"]
  gem.email         = ["jamienglish@gmail.com"]
  gem.description   = %q{Use with Bransom's Bsmart. Generate CSV of discontinued products.}
  gem.summary       = %q{Give it a current stock csv file that has a 'ref' column and a csv of discontinued products from a supplier with a 'ref' column. It will output a csv compatible with bsmart price update that will set the products we have to discontinued. Also good for seeing what we have that is now discontinued.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "discontinued"
  gem.require_paths = ["lib"]
  gem.version       = Discontinued::VERSION

  gem.add_development_dependency('aruba')
  gem.add_development_dependency('rake','~> 0.9.2')

  gem.add_dependency('methadone', '~>1.0.0.rc4')
end
