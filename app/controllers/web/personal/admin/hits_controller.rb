class Web::Personal::Admin::HitsController < Web::Personal::Admin::ApplicationController
  def index
    render locals: { hits: hits }
  end

  def new
    render locals: { hit: Hit.new }
  end

  def create
    hit = Hit.new(hit_params)
    if hit.save
      redirect_to [:admin, hit]
    else
      render :new, locals: { hit: hit }, layout: !request.xhr?
    end
  end

  def show
    render locals: { hit: hit }
  end

  def edit
    render locals: { hit: hit }
  end

  def update
    if hit.update(hit_params)
      redirect_to [:admin, hit]
    else
      render :edit, locals: { hit: hit }, layout: !request.xhr?
    end
  end

  def destroy
    if hit.destroy
      redirect_to [:admin, :hits]
    else
      redirect_to [:admin, hit]
    end
  end

  private

  def hits
    @hits ||= Hit.all
  end

  def hit
    @hit ||= Hit.find(params[:id])
  end

  def hit_params
    params.require(:hit)
          .permit(:title, :slug, :body)
  end
end
