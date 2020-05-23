require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module RailsVueSsrExample
  class Application < Rails::Application
    config.load_defaults(6.0)

    config.time_zone = 'UTC'
    config.active_record.default_timezone = :utc

    config.active_record.schema_format = :sql

    db_yml = Rails.root.join('config', 'database.yml')
    db_yml_example = Rails.root.join('config', 'database.yml.example')
    if !File.exist?(db_yml) && File.exist?(db_yml_example)
      FileUtils.cp(db_yml_example, db_yml)
    end

    config.middleware.insert_before(0, Rack::Cors) do
      allow do
        origins '*'
        resource '*',
                 headers: :any,
                 methods: %i[get put post patch delete options]
      end
    end

    config.middleware.insert(0, Rack::UTF8Sanitizer)

    config.middleware.use(Rack::Attack)

    config.assets.enabled = true
  end
end
