class Web::Personal::Admin::HitsController < Web::Personal::Admin::ApplicationController
  def index
    render locals: { hits: hits }
  end

  private

  def hits
    @hits ||= Hit.all
  end
end
