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

  friendly_id :id, use: [:slugged, :history, :finders]

  validates :slug, uniqueness: true
end
