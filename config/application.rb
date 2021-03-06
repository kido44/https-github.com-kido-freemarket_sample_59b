require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FreemarketSample59b
  class Application < Rails::Application
    config.generators do |g|
      g.stylesheets    false
      g.javascripts    false
      g.helper         false
      g.test_framework false
      config.i18n.default_locale = :ja #deviseを日本語化するための記述
    end
  end
end
