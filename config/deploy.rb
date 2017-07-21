# frozen_string_literal: true

set :application, 'gambala'
set :branch, (proc { `git rev-parse --abbrev-ref HEAD`.chomp })
set :deploy_to, "/home/deployer/apps/#{fetch(:application)}"
set :linked_dirs, %w(log node_modules tmp/pids tmp/cache tmp/sockets
                     vendor/bundle public/system public/uploads public/assets public/sitemaps)
set :linked_files, %w(config/application.yml)
set :log_level, :info
set :puma_bind, "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_init_active_record, true
set :puma_preload_app, true
set :puma_threads, [4, 16]
set :puma_workers, 2
set :repo_url, 'git@github.com:gambala/gambala.git'
set :user, 'deployer'
