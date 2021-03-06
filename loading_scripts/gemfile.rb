require 'bundler/inline'

puts 'Loading gems...'

gemfile do
  source 'https://rubygems.org'
  gem 'dotenv'
  gem 'pry', '~> 0.13.1'
  gem 'faraday'
end

puts 'Gems installed and loaded!'
