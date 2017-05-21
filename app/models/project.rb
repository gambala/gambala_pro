# frozen_string_literal: true

# == Schema Information
#
# Table name: projects
#
#  id                :integer          not null, primary key
#  title             :string
#  slug              :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  page_title        :string
#  page_subtitle     :string
#  page_cover_class  :string
#  page_mockup_image :string
#

class Project < ApplicationRecord
  include Sluggable

  mount_uploader :page_mockup_image, MockupImageUploader

  def to_s
    title
  end
end
