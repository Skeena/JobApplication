require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module JobApplication
  class Application < Rails::Application
    config.active_job.queue_adapter = :sidekiq
    config.application_name = 'Job Application'
    config.load_defaults 5.1

    config.autoload_paths += %W(#{config.root}/lib)

  end
end
