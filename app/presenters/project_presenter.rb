# frozen_string_literal: true
class ProjectPresenter < ApplicationPresenter
  presents :project

  def mockup_section_class
    @mockup_section_class ||= [page_mockup_class,
                               project.page_cover_class].join(' ')
  end

  private

  def page_mockup_class
    '-without-image' unless project.page_mockup_image?
  end
end
