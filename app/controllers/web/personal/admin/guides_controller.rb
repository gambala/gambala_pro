class Web::Personal::Admin::GuidesController < Web::Personal::Admin::ApplicationController
  def index
    render locals: { guide_groups: guide_groups }
  end

  def new
    render locals: { guide: Guide.new }
  end

  def create
    guide = Guide.new(guide_params)
    if guide.save
      redirect_to [:admin, guide]
    else
      render :new, locals: { guide: guide }, layout: !request.xhr?
    end
  end

  def show
    render locals: { guide: guide }
  end

  def edit
    render locals: { guide: guide }
  end

  def update
    if guide.update(guide_params)
      redirect_to [:admin, guide]
    else
      render :edit, locals: { guide: guide }, layout: !request.xhr?
    end
  end

  def destroy
    if guide.destroy
      redirect_to [:admin, :guides]
    else
      redirect_to [:admin, guide]
    end
  end

  private

  def guide_groups
    @guide_groups ||= Guide.all.order(created_at: :desc).group_by(&:created_at_db_date)
  end

  def guides
    @guides ||= Guide.all
  end

  def guide
    @guide ||= Guide.friendly.find(params[:id])
  end

  def guide_params
    params.require(:guide)
          .permit(:title, :slug, :body)
  end
end
