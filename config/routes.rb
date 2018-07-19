Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # resources :users, only: [:index, :update]
      resources :customers
      resources :deliveries
      resources :ingredients
      resources :menus
      resources :prepped_ingredients
      resources :recipes
      resources :seats
      resources :tables
      resources :timesheets
      resources :users
    end
  end
end
