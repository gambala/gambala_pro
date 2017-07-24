# frozen_string_literal: true

Rails.application.routes.draw do
  scope '/:locale', locale: /#{I18n.available_locales.join('|')}/ do
    scope module: :web do
      get 'bookmarks', to: redirect('/bookmarks.html')
      get 'resume', to: redirect('https://docs.google.com/document/d/1qKAryiJ9vbV-4xwfq94_RheYCUWG4y_1UNL-qYmGOpk/edit?usp=site')
      root to: 'welcome#index'
      get '*unmatched_route', to: 'errors#not_found'
    end
  end

  get '/*path', to: redirect("/#{I18n.default_locale}/%{path}")
  root to: redirect("/#{I18n.default_locale}")
end
