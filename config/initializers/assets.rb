# frozen_string_literal: true

additional_paths = [Rails.root.join('node_modules'),
                    "#{Gem.loaded_specs['breakpoint'].full_gem_path}/stylesheets"]

Rails.application.config.assets.paths += additional_paths
Rails.application.config.assets.version = '1.0'

# Rails.application.config.assets.precompile += %w()
