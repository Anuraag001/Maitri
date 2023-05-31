Rails.application.routes.draw do
  resources :comments
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

  # Defines the root path route ("/")
   # root "home#index"
   devise_scope :user do
     root to: "devise/sessions#new"
   end
   devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
