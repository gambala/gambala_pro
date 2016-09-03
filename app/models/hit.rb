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
  include Sluggable
  include Htmlable

  def to_s
    title
  end

  def happened_at_db_date
    happened_at.to_date.to_s(:db)
  end

  def happened_at_date
    happened_at.strftime('%F')
  end

  def happened_at_date=(value)
    self.happened_at = DateTime.parse("#{value} #{happened_at_time}").in_time_zone
  end

  def happened_at_time
    happened_at.strftime('%H:%M %z')
  end

  def happened_at_time=(value)
    self.happened_at = DateTime.parse("#{happened_at_date} #{value}").in_time_zone
  end
end
