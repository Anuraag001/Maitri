Rails.application.routes.draw do
  resources :confessions
  resources :comments
  # routes.rb
  # routes.rb
  # routes.rb
  # routes.rb
  resources :comments, only: [:create]
  resources :comments, only: [:create]

post '/home/index', to: 'home#create', as: 'home_comments'
  resources :blogs
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'home/index'
  get 'home/chat'

  get 'home/anonymous'

  get 'home/videochat'
  get 'home/forums'
  get 'home/confession'
  get '/blogs/:id/book', to: 'blogs#book', as: 'book_blog'

  resources :blogs do
    post 'book', on: :member
  end# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # config/routes.rb
  # config/routes.rb
  devise_for :users, path: '', controllers: { sessions: 'sessions' }, path_names: { sign_in: 'login' }, as: :custom_user_session


  # Defines the root path route ("/")
   # root "home#index"
   post '/home/save_comment', to: 'home#save_comment', as: 'save_comment'

   devise_scope :user do
     root to: "devise/sessions#new"
   end
   devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
