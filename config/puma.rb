environment ENV.fetch('RAILS_ENV') { 'development' }
plugin :tmp_restart
port ENV.fetch('PORT') { 3000 }
threads threads_count, threads_count
threads_count = ENV.fetch('RAILS_MAX_THREADS') { 5 }.to_i

# workers ENV.fetch("WEB_CONCURRENCY") { 2 }
# preload_app!

# on_worker_boot do
#   ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
# end
