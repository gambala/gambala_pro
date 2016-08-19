source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}.git" }

gem 'aasm'
gem 'bootstrap-components', github: 'gambala/bootstrap-components'
gem 'bugsnag'
gem 'clearance', github: 'gambala/clearance'
gem 'coffee-rails'
gem 'figaro'
gem 'friendly_id'
gem 'jquery-rails'
gem 'pg'
gem 'pry'
gem 'pry-rails'
gem 'rack-timeout'
gem 'rails', '>= 5.0.0.1'
gem 'sassc-rails', github: 'sass/sassc-rails'
gem 'slim'
gem 'turbolinks'
gem 'uglifier'

group :test do
  gem 'capybara'
  gem 'codeclimate-test-reporter', require: false
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
end

group :development do
  gem 'annotate'
  gem 'bullet'
  gem 'bundler-audit'
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-figaro-yml'
  gem 'capistrano-rails'
  gem 'capistrano-rvm'
  gem 'capistrano-unicorn-nginx'
  gem 'guard', require: false
  gem 'guard-bundler', require: false
  gem 'guard-livereload', require: false
  gem 'guard-puma', require: false
  gem 'listen'
  gem 'meta_request'
  gem 'puma'
  gem 'rack-livereload'
  gem 'rails_best_practices', require: false
  gem 'rb-inotify', github: 'nex3/rb-inotify', require: false
  gem 'rubocop', require: false
  gem 'rubycritic', require: false
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'traceroute'
  gem 'web-console'
end

group :production do
  gem 'unicorn'
end

source 'https://rails-assets.org' do
  gem 'rails-assets-smooch'
end
