# == Schema Information
#
# Table name: guides
#
#  id         :integer          not null, primary key
#  title      :string
#  slug       :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Guide < ApplicationRecord
  include Sluggable
  include Htmlable

  def to_s
    title
  end

  def created_at_db_date
    created_at.to_date.to_s(:db)
  end
end
