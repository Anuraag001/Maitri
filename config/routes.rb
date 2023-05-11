Rails.application.routes.draw do
  resources :blogs
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'home/index'
  get 'home/chat'
  get 'home/videochat'
  get 'home/forums'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   # root "home#index"
   devise_scope :user do
     root to: "devise/sessions#new"
   end
   devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
      # match '*unmatched', to: 'application#render_404', via: :all,constraints: lambda { |req| req.path.exclude? 'rails/active_storage' }
  end
end
