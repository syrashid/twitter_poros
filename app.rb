require_relative 'loading_scripts/gemfile'
require_relative 'loading_scripts/env_loader'

require_relative 'router'

Router.new.run
