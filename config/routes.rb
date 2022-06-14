Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :events, only: %i[new create edit update show plan] do
    resources :guests, only: %i[index new create edit update]
    resources :plans, only: %i[index create update]
  end

  resources :activities, only: %i[new create edit update destroy] do
    collection do
      get 'eat'
      get 'play'
      get 'stay'
      get 'go'
    end
  end
  resources :guests, only: %i[destroy]
  resources :plans, only: %i[destroy]
end
