# frozen_string_literal: true

module Web
  class ApplicationController < ::ApplicationController
    protect_from_forgery with: :exception

    helper_method :active_i18n_language
    helper_method :active_i18n_languages
    helper_method :is_root_link_hided

    # Helper methods / Resources

    def active_i18n_language
      @active_i18n_language ||= I18nLanguage.find_by(locale: I18n.locale)
    end

    def active_i18n_languages
      @active_i18n_languages ||= active_i18n_languages_value
    end

    def active_i18n_languages_value
      result = mimic_user&.admin? ? I18nLanguage.all : I18nLanguage.active
      result.order(:position)
    end

    def is_root_link_hided
      @is_root_link_hided
    end
  end
end
