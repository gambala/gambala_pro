# frozen_string_literal: true

class User < ApplicationRecord
  include Clearance::User
  include AASM

  validates :password, length: { minimum: 3 }, on: :create

  aasm do
    state :account, initial: true
    state :admin

    event :to_admin do
      transitions from: :account, to: :admin
    end
  end
end

# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  email              :string           not null
#  encrypted_password :string(128)      not null
#  confirmation_token :string(128)
#  remember_token     :string(128)      not null
#  aasm_state         :string
#  access_level       :string
#
# Indexes
#
#  index_users_on_access_level    (access_level)
#  index_users_on_email           (email)
#  index_users_on_remember_token  (remember_token)
#
