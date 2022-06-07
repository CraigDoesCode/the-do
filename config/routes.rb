Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :events, only %i[new create edit update show] do
    resources :activities, only %i[new create edit update]
    resources :guests, only %i[index new create edit update]
  end

  :

  resources :activities only %i[show destroy] do
    collection do
      get 'eat'
      get 'play'
      get 'stay'
    end
  end


end
