class I18nLanguage < ApplicationRecord
  self.primary_key = 'locale'

  scope :active, -> { where(is_active: true) }

  def to_s
    title
  end
end

# == Schema Information
#
# Table name: i18n_languages
#
#  locale          :string           not null
#  title           :string
#  is_active       :boolean          default(FALSE), not null
#  position        :integer
#  flag_code       :string
#  title_localized :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_i18n_languages_on_locale  (locale) UNIQUE
#
