Rails.application.routes.draw do

  post '/login', to: 'authentication#login', default: {:format => :json}
  post '/signup', to: 'authentication#signup', default: {:format => :json}

  namespace 'api' do
    namespace 'v1' do
      get 'users/:user_id/posts' => 'api#user_posts'
      get 'users/:user_id/posts/:post_id' => 'api#user_comments'
      post 'posts/:post_id/comment' => 'api#add_comment_to_post'
    end
  end


  devise_scope :user do
    # Redirects signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  devise_for :users
  root 'users#index'
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resources :comments, only: [:create, :destroy]
      resources :likes, only: [:create]
    end
  end
end
