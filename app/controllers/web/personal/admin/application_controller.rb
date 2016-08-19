class Web::Personal::Admin::ApplicationController < Web::Personal::ApplicationController
  before_action :require_admin

  private

  def require_admin
  end
end
