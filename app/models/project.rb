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

  has_many :hits
  mount_uploader :page_mockup_image, MockupImageUploader

  def to_s
    title
  end

  def page_mockup_class
    '-without-image' unless page_mockup_image?
  end
end
