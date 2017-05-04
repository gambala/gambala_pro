# frozen_string_literal: true
require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/scm/git'
require 'capistrano/rvm'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/figaro_yml'
require 'capistrano/puma'
require 'capistrano/puma/nginx'

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
install_plugin Capistrano::SCM::Git
