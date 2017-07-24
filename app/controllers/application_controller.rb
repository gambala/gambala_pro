# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :deployed_at
  before_action :set_locale

  private

  def default_url_options
    { locale: I18n.locale }
  end

  def deployed_at
    File.atime(Rails.root.join('REVISION')).utc
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
