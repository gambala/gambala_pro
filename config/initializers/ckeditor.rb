Ckeditor.setup do |config|
  require 'ckeditor/orm/active_record'

  config.assets_languages = %w(ru)
  config.attachment_file_types = %w(doc docx xls odt ods pdf rar zip tar tar.gz swf)
  config.js_config_url = '/assets/ckeditor/config.js'
  config.parent_controller = 'Web::ApplicationController'
  # config.assets_plugins = %w(image smiley)
end
