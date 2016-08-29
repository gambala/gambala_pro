class Web::HitsController < Web::ApplicationController
  def index
    render locals: { hits: hits }
  end

  def show
    render locals: { hit: hit }
  end

  private

  def hits
    @hits ||= Hit.all
  end

  def hit
    @hit ||= Hit.friendly.find(params[:id])
  end
end
