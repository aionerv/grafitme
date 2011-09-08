require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"
require "sprockets/railtie"

if defined?(Bundler)
  Bundler.require *Rails.groups(:assets => %w(development test))
end

module Grafitme
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.assets.enabled = true
    config.assets.version = '1.0'

    config.generators do |g|
      g.test_framework :rspec, :views => false, :fixture => true
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.form_builder :simple_form
      g.template_engine :haml
    end

    config.autoload_paths += %W(#{config.root}/lib)
    config.autoload_paths += Dir["#{config.root}/lib/**/"]
  end
end
