# frozen_string_literal: true

require_relative 'forbidden_locations'

server ENV['deploy_host'], port: ENV['deploy_port'], user: ENV['deploy_user'], roles: %w(app db web)
set :forbidden_locations, Deploy::FORBIDDEN_LOCATIONS
set :letsencrypt_path, 'gambala.pro'
set :nginx_config_name, 'gambala.production.nginx.conf'
set :nginx_server_name, 'gambala.pro'
set :nginx_use_ssl, true
set :ssh_options, keys: %w(/home/gambala/.ssh/id_rsa),
                  forward_agent: true,
                  auth_methods: %w(publickey)
