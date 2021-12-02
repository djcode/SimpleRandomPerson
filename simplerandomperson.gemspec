# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name                  = 'simplerandomperson'
  s.version               = '0.0.1'
  s.summary               = 'A simple random person generator.'
  s.description           = 'Quickly generates a random person, username, email and password.'
  s.authors               = ['Daniel Jolly']
  s.email                 = 'simplerandompersongem@danieljolly.com'
  s.files                 = %w[lib/simplerandomperson.rb
                               lib/data/first_names.txt
                               lib/data/last_names.txt
                               lib/data/domains.txt]
  s.homepage              = 'https://github.com/djcode/SimpleRandomPerson'
  s.license               = 'MIT'
  s.required_ruby_version = '>= 2.0'
end
