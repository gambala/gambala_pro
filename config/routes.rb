# frozen_string_literal: true

Rails.application.routes.draw do
  scope module: :web do
    get 'bookmarks', to: redirect('/bookmarks.html')
    get 'resume', to: redirect('https://docs.google.com/document/d/1qKAryiJ9vbV-4xwfq94_RheYCUWG4y_1UNL-qYmGOpk/edit?usp=site')
    root to: 'welcome#index'
  end
end
