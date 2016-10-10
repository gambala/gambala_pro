module Web::Personal
  class ApplicationController < Web::ApplicationController
    before_action :require_login
  end
end
