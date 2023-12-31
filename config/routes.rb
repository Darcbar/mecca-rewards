Rails.application.routes.draw do
  get 'admin/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'registered', to: 'welcome#registered'
  get 'unsubscribe', to: 'welcome#unsubscribe'
  post 'welcome/create_club'
  root "welcome#index"
end
