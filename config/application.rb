require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DecidimProgressistesLgbt
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # String identifier, this defines the main mode of Decidim
    # See README.md for more explation on this.
    #
    # Available throughout code as: Rails.application.config.use_mode
    # Allowed values are:
    #   'private' : string = Private mode (force logging in)
    #   'normal' : string = Normal mode without modifications
    config.use_mode = 'normal'

    # Wrapper class can be used to customize the coloring of the platform per
    # environment. This is used mainly for the Ideapaahtimo/KuVa instance.
    config.wrapper_class = 'wrapper-default'

    # Color profile that changes the logo color for header and footer
    config.color_profile = 'black'

    # The feedback email in the footer of the site
    config.feedback_email = 'omastadi@hel.fi'

  end
end
