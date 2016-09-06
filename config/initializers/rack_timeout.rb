Rack::Timeout.service_timeout = if Rails.env.production?
                                  15  # seconds
                                else
                                  120  # seconds
                                end
