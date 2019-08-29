# frozen_string_literal: true

module Web
  class WelcomeController < Web::ApplicationController
    def index
      @is_root_link_hided = true
    end
  end
end
