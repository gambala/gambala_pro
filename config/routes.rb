Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  scope module: :web do
    scope module: :personal do
      namespace :admin do
        resources :hits

        root to: 'welcome#index'
      end

      get 'personal', to: 'welcome#index'
    end

    root to: 'welcome#index'
  end
end
