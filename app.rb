require 'pry'

require_relative 'loading_scripts/gemfile'
require_relative 'loading_scripts/env_loader'

puts "Hello World"

puts ENV['TEST_VAR']
puts "something else"
