# frozen_string_literal: true
Clearance.configure do |config|
  config.allow_sign_up = true
  config.cookie_domain = '.gambala.pro'
  config.cookie_expiration = ->(_cookies) { 1.year.from_now.utc }
  config.cookie_name = 'remember_token'
  config.cookie_path = '/'
  config.httponly = false
  config.mailer_sender = 'auth@gambala.pro'
  config.password_strategy = Clearance::PasswordStrategies::BCrypt
  config.redirect_url = '/'
  config.routes = true
  config.secure_cookie = false
  config.sign_in_guards = []
  config.user_model = User
end
