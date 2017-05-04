# frozen_string_literal: true
module Sluggable
  extend ActiveSupport::Concern

  included do
    extend FriendlyId
    SLUG_FORMAT = /[a-z\-\d]+/
    friendly_id :id, use: [:slugged, :history, :finders]
    validates :slug, uniqueness: { case_sensitive: false },
                     format: { with: Regexp.new('\A' + SLUG_FORMAT.source + '\z') },
                     allow_blank: true
  end
end
