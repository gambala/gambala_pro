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
end
