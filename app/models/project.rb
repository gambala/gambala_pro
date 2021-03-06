# frozen_string_literal: true

class Project < ApplicationRecord
  include Sluggable

  def to_s
    title
  end
end

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
