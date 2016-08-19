Rails.application.routes.draw do
  scope module: :web do
    scope module: :personal do
      resources :namespaces, only: :index
    end

    root to: 'welcome#index'
  end
end
