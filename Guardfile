# frozen_string_literal: true

interactor :simple

guard :bundler do
  watch('Gemfile')
end

guard :livereload do
  watch(%r{app/views/.+(.html|.erb|.slim)$})
  watch(%r{app/helpers/.+.rb})
  watch(%r{config/locales/.+.yml})
  watch(%r{public/.+.(css|js|html)})
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html|png|jpg))).*}) do |m|
    "/assets/#{m[3]}"
  end
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(sass))).*}) do |m|
    "/assets/#{m[3].sub!('.sass', '.css')}"
  end
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(scss))).*}) do |m|
    "/assets/#{m[3].sub!('.scss', '.css')}"
  end
end
