Ckeditor.setup do |config|
  require 'ckeditor/orm/active_record'

  config.parent_controller = 'Web::ApplicationController'
end
