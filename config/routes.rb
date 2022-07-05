Rails.application.routes.draw do
  get 'posts/index'
  root 'users#index'
  resources :users, only: [:index, :show] 
 
end
