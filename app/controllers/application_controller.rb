class ApplicationController < ActionController::Base
  include Clearance::Controller
  helper_method :deployed_at

  private

  def deployed_at
    File.atime("#{Rails.root}/REVISION").utc
  end
end
