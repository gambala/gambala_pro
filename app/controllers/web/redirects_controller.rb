# frozen_string_literal: true

module Web
  class RedirectsController < Web::ApplicationController
    def resume
      redirect_to resume_url
    end

    private

    def resume_url
      case I18n.locale
      when :ru
        'https://docs.google.com/document/d/1qKAryiJ9vbV-4xwfq94_RheYCUWG4y_1UNL-qYmGOpk/edit'
      when :en
        'https://docs.google.com/document/d/16uCOZ0ehVdsZXgqSpfkz-y5P0uoysbsRPwWd7vuzvMI/edit'
      end
    end
  end
end
