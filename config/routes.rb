Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  scope module: :web do
    scope module: :personal do
      namespace :admin do
        resources :projects

        root to: 'welcome#index'
      end

      get 'personal', to: 'welcome#index'
    end

    resources :projects, only: [:index, :show]
    root to: 'welcome#index'
  end
end
