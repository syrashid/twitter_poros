require 'bundler/inline'

puts 'Loading gems...'

gemfile do
  source 'https://rubygems.org'
  gem 'dotenv'
end

puts 'Gems installed and loaded!'
