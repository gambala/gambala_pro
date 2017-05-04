# frozen_string_literal: true
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
#

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
