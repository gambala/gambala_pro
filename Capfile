require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/rvm'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/figaro_yml'
require 'capistrano/puma'
require 'capistrano/puma/nginx'

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
