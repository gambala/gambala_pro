class Web::Personal::ApplicationController < Web::ApplicationController
  before_action :require_login
end
