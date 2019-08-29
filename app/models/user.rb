# frozen_string_literal: true

class User < ApplicationRecord
  extend Enumerize

  ACCESS_LEVELS = %i(user admin).freeze

  enumerize :access_level,
            in: ACCESS_LEVELS,
            default: ACCESS_LEVELS.first,
            scope: true

  validates :password, length: { minimum: 3 }, on: :create
end

# == Schema Information
#
# Table name: users
#
#  id                                                                      :integer          not null, primary key
#  created_at                                                              :datetime         not null
#  updated_at                                                              :datetime         not null
#  email                                                                   :string           not null
#  encrypted_password                                                      :string(128)      not null
#  confirmation_token                                                      :string(128)
#  remember_token                                                          :string(128)      not null
#  aasm_state(Deprecated 25.06.2017. Use access_level enum field instead.) :string
#  access_level                                                            :string
#
# Indexes
#
#  index_users_on_access_level    (access_level)
#  index_users_on_email           (email)
#  index_users_on_remember_token  (remember_token)
#
