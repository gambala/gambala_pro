# frozen_string_literal: true

require 'figaro'

Figaro.application = Figaro::Application.new(environment: fetch(:stage),
                                             path: File.expand_path('application.yml', __dir__))
Figaro.load

set :application, 'gambala'
set :branch, (proc { `git rev-parse --abbrev-ref HEAD`.chomp })
set :deploy_to, "/home/#{ENV['deploy_user']}/apps/#{fetch(:application)}-#{fetch(:stage)}"
set :linked_dirs, %w(log
                     node_modules
                     public/assets
                     public/sitemaps
                     public/uploads
                     tmp/cache
                     tmp/pids
                     tmp/sockets
                     vendor/bundle)
set :linked_files, %w(config/application.yml)
set :log_level, :info
set :puma_bind, "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_init_active_record, true
set :puma_preload_app, false
set :puma_threads, [4, 16]
set :puma_workers, 2
set :repo_url, 'git@github.com:gambala/gambala.git'
set :support_email, 'support@gambala.pro'
set :user, ENV['deploy_user']
