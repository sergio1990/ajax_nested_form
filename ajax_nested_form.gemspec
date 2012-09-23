# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ajax_nested_form/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["sergio1990"]
  gem.email         = ["sergeg1990@gmail.com"]
  gem.description   = %q{Add and remove nested model fields dynamically through JavaScript using jQuery for Rails 3.1+ with assets pipeline}
  gem.summary       = %q{Add and remove nested model fields dynamically through JavaScript using jQuery for Rails 3.1+ with assets pipeline}
  gem.homepage      = "https://github.com/sergio1990/ajax_nested_form"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ajax_nested_form"
  gem.require_paths = ["lib"]
  gem.version       = AjaxNestedForm::VERSION

  gem.add_dependency "railties", ">= 3.0"
  gem.add_dependency "sass", ">= 3.2"
  gem.add_dependency "coffee-rails"
  gem.add_dependency 'jquery-rails', ">= 2.1.2"
  gem.add_development_dependency "bundler", ">= 1.0"
  gem.add_development_dependency "rails",   ">= 3.1"
end
