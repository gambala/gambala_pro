module Htmlable
  extend ActiveSupport::Concern

  included do
    def annotation
      return @annotation if defined? @annotation
      @annotation = annotation_from_body
    end

    def cover
      return @cover if defined? @cover
      @cover = first_image_from_body
    end
  end

  private

  def annotation_from_body
    body_before_page_break || body
  end

  def body_before_page_break
    return unless page_break_position
    body[0..page_break_position - 1]
  end

  def first_image_from_body
    match = body.match(/src="([^"]+)"/)
    return unless match.present?
    match[1]
  end

  def page_break_position
    @page_break_position ||= body.index('<div style="page-break-after: always">')
  end
end
