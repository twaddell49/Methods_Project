UReview3::Application.routes.draw do
  get "static_pages/home"
  root to: 'static_pages#home'
  
  resources :reviews
  resources :critics

  match '/signup', to: 'critics#new', via: 'get'
end
