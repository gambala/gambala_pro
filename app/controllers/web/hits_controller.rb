class Web::HitsController < Web::ApplicationController
  def index
    render locals: { hit_groups: hit_groups }
  end

  def show
    render locals: { hit: hit }
  end

  private

  def hit_groups
    @hit_groups ||= Hit.all.group_by(&:created_at_db_date)
  end

  def hit
    @hit ||= Hit.friendly.find(params[:id])
  end
end
