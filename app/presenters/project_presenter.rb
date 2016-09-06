class ProjectPresenter < ApplicationPresenter
  presents :project

  def hit_groups
    return unless project.hits.any?
    @hit_groups ||= project.hits.order(happened_at: :desc).group_by(&:happened_at_db_date)
  end

  def mockup_section_class
    @mockup_section_class ||= [page_mockup_class,
                               project.page_cover_class].join(' ')
  end

  private

  def page_mockup_class
    '-without-image' unless project.page_mockup_image?
  end
end
