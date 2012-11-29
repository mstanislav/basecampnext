Gem::Specification.new do |s|
  s.name            = 'basecampnext'
  s.version         = '0.0.4'

  s.date            = '2012-11-29'
  s.summary         = "Basecamp Next API 'wrapper' for Ruby."
  s.description     = "Commonly needed Basecamp Next functionality with a friendly interface."
  s.authors         = ["Mark Stanislav"]
  s.email           = 'mark.stanislav@gmail.com'
  s.files           = ["lib/basecampnext.rb", "README.md"]
  s.homepage        = 'http://rubygems.org/gems/basecampnext'
  s.license         = 'MIT'

  s.add_dependency('json', '~> 1.7.5')
  s.add_dependency('httparty', '~> 0.9.0')
end
