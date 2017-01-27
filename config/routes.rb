Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  scope module: :web do
    resources :pages, path: '', only: :show

    root to: 'welcome#index'
    get '*path', to: redirect('/')
  end
end
