# frozen_string_literal: true

class RedirectsController < ActionController::Base
  def no_locale
    path = request.fullpath
    path = path.gsub(ENV['RAILS_RELATIVE_URL_ROOT'], '') if ENV['RAILS_RELATIVE_URL_ROOT'].present?
    redirect_to "#{ENV['app_root']}/#{default_locale}#{path}"
  end

  private

  def default_locale
    @default_locale ||= cookies[:locale] || I18n.default_locale
  end
end
