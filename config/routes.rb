UReview3::Application.routes.draw do
  get "static_pages/home"

  resources :reviews
  resources :critics
end
