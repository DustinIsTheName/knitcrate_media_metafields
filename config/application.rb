require_relative 'boot'

require 'rails/all'
require 'open-uri'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module KnitcrateMediaMetafields
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    ShopifyAPI::Base.site = "https://#{ENV["API_KEY"]}:#{ENV["PASSWORD"]}@#{ENV["SHOPIFY_URL"]}/admin"
  end
end
