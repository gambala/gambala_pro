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

  SLUG_FORMAT = /[a-z-\d]+/

  friendly_id :id, use: [:slugged, :history, :finders]

  validates :slug, uniqueness: { case_sensitive: false },
                   format: { with: Regexp.new('\A' + SLUG_FORMAT.source + '\z') },
                   allow_blank: true

  def to_s
    title
  end

  def created_at_db_date
    created_at.to_date.to_s(:db)
  end
end
