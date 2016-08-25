# == Schema Information
#
# Table name: hits
#
#  id         :integer          not null, primary key
#  title      :string
#  slug       :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
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
end
