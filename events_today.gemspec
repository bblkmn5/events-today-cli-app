lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "events_today/version"

Gem::Specification.new do |spec|
  spec.name          = "events-today-cli-app"
  spec.version       = EventsToday::VERSION
  spec.authors       = ["Ben Blackman"]
  spec.email         = ["bblkmn5@gmail.com"]

  spec.summary       = %q{Events Today in Santa Cruz, CA}
  spec.description   = %q{Provides Featured events today in Santa Cruz, California}
  spec.homepage      = "https://github.com/bblkmn5/events-today-cli-app"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = ['events-today']
  spec.require_paths = ["lib", "lib/events_today"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri", '~> 0'
  spec.add_development_dependency "pry", '~> 0'
end