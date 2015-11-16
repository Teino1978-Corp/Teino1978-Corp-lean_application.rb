# config/lean_application.rb
 
#
# Require and run only a part of your Rails app (maybe as a background process)
#

require File.expand_path('../boot', __FILE__)
require 'active_record/railtie'
require 'action_mailer/railtie'

Bundler.require *Rails.groups(:assets => %w(development test))

module Lean
  class Application < Rails::Application
    config.time_zone = 'Pacific Time (US & Canada)'
    config.encoding = 'utf-8'
    config.autoload_paths << config.root.join('lib')
    config.assets.enabled = false
    config.paths['config/routes'] = [] # skip routes
    config.paths['config/initializers'] = Dir[config.root.join('config/lean_initializers/*')] # custom initializers
  end
end

Lean::Application.initialize!