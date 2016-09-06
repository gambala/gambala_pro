Rails.application.config.assets.version = '1.0'
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.precompile += %w(
  ckeditor/config.js
  ckeditor/filebrowser/*
  ckeditor/plugins/*
  ckeditor/skins/moonocolor/*
  modernizr-custom.js
)
