# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale

  helper_method :mimic_user
  helper_method :locale_ru?
  helper_method :deployed_at

  private

  # Before/After actions

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  # Helper methods / Users

  def current_user
    nil
  end

  def mimic_user
    return if current_user.blank?
    return nil if params[:mimic_user_id] == 'guest'
    User.find_by(id: params[:mimic_user_id].to_i).presence || current_user
  end

  # Helper methods / Resources

  def deployed_at
    File.atime(Rails.root.join('REVISION')).utc
  end

  # Helper methods / Other

  def locale_ru?
    I18n.locale == :ru
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
