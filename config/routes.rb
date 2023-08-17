Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'registered', to: 'welcome#registered'
  post 'welcome/create_club'
  root "welcome#index"
end
