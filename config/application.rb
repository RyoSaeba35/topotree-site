require_relative "boot"
require "action_controller/railtie"
require "action_view/railtie"

module TopotreeSite
  class Application < Rails::Application
    config.load_defaults 7.2
  end
end
