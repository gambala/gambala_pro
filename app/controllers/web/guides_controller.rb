module Web
  class GuidesController < Web::ApplicationController
    def index
      render locals: { guide_groups: guide_groups }
    end

    def show
      render locals: { guide: guide }
    end

    private

    def guide_groups
      @guide_groups ||= Guide.all.order(created_at: :desc).group_by(&:created_at_db_date)
    end

    def guide
      @guide ||= Guide.friendly.find(params[:id])
    end
  end
end
