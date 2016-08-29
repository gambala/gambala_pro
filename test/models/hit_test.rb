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

require 'test_helper'

class HitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
