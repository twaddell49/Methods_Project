UReview3::Application.routes.draw do
  resources :games

  get "static_pages/home"
  root to: 'static_pages#home'
  
  resources :reviews
  resources :critics
  resources :sessions, only: [:new, :create, :destory]

  match '/signup', to: 'critics#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
end
