# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
 gem.name = "compass-tools"
 gem.version = "0.0.1"
 gem.authors = ["Lore-w"]
 gem.email = ["metro-cpu@hotmail.com"]
 gem.description =
 "compass-tools"
 gem.summary = "compass-tools"
 gem.homepage = ""
 gem.files = %w(README.md LICENSE)
 gem.files += Dir.glob("lib/**/*")
 gem.files += Dir.glob("stylesheets/**/*")
 gem.files += Dir.glob("templates/**/*")
 gem.add_dependency "sass", ">= 3.4.8"
 gem.add_dependency "compass", ">= 1.0.3"
end