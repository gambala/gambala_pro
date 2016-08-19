Rails.application.routes.draw do
  scope module: :web do
    scope module: :personal do
      namespace :admin do
        root to: 'welcome#index'
      end

      resources :namespaces, only: :index
    end

    root to: 'welcome#index'
  end
end
