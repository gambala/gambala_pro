class PopulateI18nLanguages
  ENTITIES = [
    { position: 1, locale: :en, flag_code: :us, title: 'English', title_localized: 'English' },
    { position: 2, locale: :ru, flag_code: :ru, title: 'Russian', title_localized: 'Русский' }
  ].freeze

  def call(make_active: false)
    ENTITIES.each do |entity|
      record = I18nLanguage.where(locale: entity[:locale]).first_or_initialize
      record.update!(entity)
    end

    I18nLanguage.all.update_all(is_active: true) if make_active == true
    puts 'I18nLanguages populated'
  end
end
