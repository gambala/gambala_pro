Rails.application.config.assets.version = '1.0'
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.precompile += %w(
  ckeditor/config.js
  ckeditor/filebrowser/*
  ckeditor/plugins/*
  ckeditor/skins/moonocolor/*
  modernizr-custom.js
)

# Paths fix for non-rails sass gems
additional_paths = ["#{Gem.loaded_specs['susy'].full_gem_path}/sass",
                    "#{Gem.loaded_specs['breakpoint'].full_gem_path}/stylesheets"]
Rails.application.config.assets.paths += additional_paths
