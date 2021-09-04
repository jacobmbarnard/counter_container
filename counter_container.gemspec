Gem::Specification.new do |s|
    s.name = "counter_container"
    s.version = "0.0.1"
    s.summary = "Provides the CounterContainer module, allowing classes to manipulate a counting object."
    s.description = "Provides access to the module CounterContainer. Including CounterContainer allows classes with an Integer attribute (@counter) to gain incrementing, decrementing, and other functionality."
    s.authors = ["Jacob Barnard"]
    s.email = "jmbarnardg1@gmail.com"
    s.files = Dir.glob("lib/**/*", File::FNM_DOTMATCH)
    s.homepage = "https://rubygems.org/gems/counter_container"
    s.license = "Apache-2.0"
  end
  