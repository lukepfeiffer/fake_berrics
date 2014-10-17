require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(*Rails.groups)

module BerricsFake
  class Application < Rails::Application
    config.filepicker_rails.api_key = 'AfO93jP4GRE2yiHOkJtxVz'
  end
end
