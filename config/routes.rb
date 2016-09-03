Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  scope module: :web do
    scope module: :personal do
      namespace :admin do
        resources :guides
        resources :hits
        resources :projects

        root to: 'welcome#index'
      end

      get 'personal', to: 'welcome#index'
    end

    resources :guides, only: [:index, :show]
    resources :hits, only: [:index, :show]
    resources :projects, only: [:index, :show]
    root to: 'welcome#index'
  end
end
