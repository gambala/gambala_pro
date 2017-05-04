# frozen_string_literal: true
module Web
  class PagesController < Web::ApplicationController
    def show
      if partial_name_correct?
        render partial_name
      else
        redirect_to :root, status: 404
      end
    end

    private

    def partial_name
      params[:id].underscore
    end

    def partial_name_correct?
      %w(frontend).include? params[:id]
    end
  end
end
