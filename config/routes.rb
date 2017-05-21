# frozen_string_literal: true

Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  scope module: :web do
    get 'resume', to: redirect('https://docs.google.com/document/d/1qKAryiJ9vbV-4xwfq94_RheYCUWG4y_1UNL-qYmGOpk/edit?usp=site')

    get 'bookmarks', to: redirect('/bookmarks.html')
    resources :pages, path: '', only: :show
    root to: 'welcome#index'
  end
end
