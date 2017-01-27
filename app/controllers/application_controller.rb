class ApplicationController < ActionController::Base
  include Clearance::Controller
  helper_method :deployed_at

  private

  def deployed_at
    File.atime(Rails.root.join('REVISION')).utc
  end
end
