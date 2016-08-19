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

require 'test_helper'

class HitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
