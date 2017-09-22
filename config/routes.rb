Rails.application.routes.draw do
  root to: "pages#home"
  get '/about', to: 'pages#about'
  devise_for :users
  devise_scope :users do
    resources :users, only: [:show]    
  end
  resources :topics
end
