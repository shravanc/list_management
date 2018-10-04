Lms::Engine.routes.draw do
  get 'layouts/index'
  get 'layouts/create'
  resources :lists
  resources :items
end
