module Web
  class ProjectsController < Web::ApplicationController
    def index
      render locals: { projects: projects }
    end

    def show
      render locals: { project: project }
    end

    private

    def projects
      @projects ||= Project.all.order(created_at: :desc)
    end

    def project
      @project ||= Project.friendly.find(params[:id])
    end
  end
end
