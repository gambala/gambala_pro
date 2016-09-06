class Web::Personal::Admin::ProjectsController < Web::Personal::Admin::ApplicationController
  helper_method :hits

  def index
    render locals: { projects: projects }
  end

  def new
    render locals: { project: Project.new }
  end

  def create
    project = Project.new(project_params)
    if project.save
      redirect_to [:admin, project]
    else
      render :new, locals: { project: project }, layout: !request.xhr?
    end
  end

  def show
    render locals: { project: project }
  end

  def edit
    render locals: { project: project }
  end

  def update
    if project.update(project_params)
      redirect_to [:admin, project]
    else
      render :edit, locals: { project: project }, layout: !request.xhr?
    end
  end

  def destroy
    if project.destroy
      redirect_to [:admin, :projects]
    else
      redirect_to [:admin, project]
    end
  end

  private

  def projects
    @projects ||= Project.all.order(created_at: :desc)
  end

  def project
    @project ||= Project.friendly.find(params[:id])
  end

  def hits
    @hits ||= Hit.all.order(happened_at: :desc)
  end

  def project_params
    params.require(:project)
          .permit(:title, :slug,
                  :page_title, :page_subtitle, :page_cover_class,
                  :page_mockup_image,
                  hit_ids: [])
  end
end
