# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :deployed_at

  private

  def deployed_at
    File.atime(Rails.root.join('REVISION')).utc
  end
end
