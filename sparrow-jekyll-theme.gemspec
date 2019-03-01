# coding: utf-8
 
Gem::Specification.new do |spec|
  spec.name          = "sparrow-jekyll-theme"
  spec.version       = "0.1.2"
  spec.authors       = ["Lingyi Hu"]
  spec.email         = ["lingyihuu@gmail.com"]
 
  spec.summary       = %q{A clean and minimal theme for writers.}
  spec.homepage      = "https://github.com/lingxz/sparrow"
  spec.license       = "MIT"
 
  spec.metadata["plugin_type"] = "theme"

  spec.files                   = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets/css|assets/fonts|assets/js|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end
 
  spec.add_runtime_dependency "jekyll", "~> 3.3"
  spec.add_runtime_dependency "jekyll-paginate-v2", "~> 2.1.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.8"

  spec.add_development_dependency "bundler", "~> 1.12"
end