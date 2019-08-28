# frozen_string_literal: true

Rails.application.routes.draw do
  scope '/:locale', locale: /#{I18n.available_locales.join('|')}/ do
    scope module: :web do
      get 'bookmarks', to: redirect('/bookmarks.html')
      get 'posts-t', to: redirect('/posts-t.html')
      get 'resume', to: 'redirects#resume'
      root to: 'welcome#index'
      get '*unmatched_route', to: 'errors#not_found'
    end
  end

  get '/',      to: 'redirects#no_locale'
  get '/*path', to: 'redirects#no_locale'
end
