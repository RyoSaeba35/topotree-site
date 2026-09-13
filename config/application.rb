require_relative "boot"
require "rails/all"

module TopotreeSite
  class Application < Rails::Application
    config.load_defaults 7.2
  end
end
