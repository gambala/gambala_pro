# frozen_string_literal: true

module Web::Personal::Admin
  class ApplicationController < Web::Personal::ApplicationController
    before_action :require_admin

    private

    def require_admin
      redirect_to :root, error: 'Нет доступа к админке' unless current_user.admin?
    end
  end
end
