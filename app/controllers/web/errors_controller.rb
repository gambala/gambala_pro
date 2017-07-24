# frozen_string_literal: true

module Web
  class ErrorsController < Web::ApplicationController
    def not_found
      render file: 'public/404.html', status: :not_found, layout: false
    end
  end
end
