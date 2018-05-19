# frozen_string_literal: true

environment ENV.fetch('RAILS_ENV') { 'development' }
plugin :tmp_restart
port ENV.fetch('PORT') { 3000 }
threads_count = ENV.fetch('RAILS_MAX_THREADS') { 5 }
threads threads_count, threads_count
