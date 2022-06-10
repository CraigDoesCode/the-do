Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :events, only: %i[new create edit update show plan] do
    resources :activities, only: %i[new create edit update] do
      collection do
        get 'eat'
        get 'play'
        get 'stay'
        get 'go'
        get 'plan'
      end
    end
    resources :guests, only: %i[index new create edit update]
  end
  resources :guests, only: %i[destroy]
  resources :activities, only: %i[destroy]
end
