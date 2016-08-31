# == Schema Information
#
# Table name: hits
#
#  id          :integer          not null, primary key
#  title       :string
#  slug        :string
#  body        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  happened_at :datetime         default(Mon, 29 Aug 2016 18:34:05 MSK +03:00), not null
#

class Hit < ApplicationRecord
  extend FriendlyId

  SLUG_FORMAT = /[a\-z\-\d]+/

  friendly_id :id, use: [:slugged, :history, :finders]

  validates :slug, uniqueness: { case_sensitive: false },
                   format: { with: Regexp.new('\A' + SLUG_FORMAT.source + '\z') },
                   allow_blank: true

  def to_s
    title
  end

  def cover
    return @cover if defined? @cover
    @cover = first_image_from_body
  end

  def annotation
    return @annotation if defined? @annotation
    @annotation = annotation_from_body
  end

  def happened_at_db_date
    happened_at.to_date.to_s(:db)
  end

  def happened_at_date
    happened_at.strftime('%F')
  end

  def happened_at_date=(value)
    self.happened_at = DateTime.parse("#{value} #{happened_at_time}")
  end

  def happened_at_time
    happened_at.strftime('%H:%M %z')
  end

  def happened_at_time=(value)
    self.happened_at = DateTime.parse("#{happened_at_date} #{value}")
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
