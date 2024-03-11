Rails.application.routes.draw do
  resources :lectures
  get 'hey/there'
  resources :courses do
    member do
      get "addlecture"
    end
  end
  resources :othercats
  resources :cats, path: "cat"
  get "featuredskill", to: 'featuredskill#hey'
  get 'home/index'
  devise_for :users, controllers: { registrations: 'users/registrations',sessions: 'users/sessions' }
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
