Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  resources :daily_habits
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "daily_habits#index"
end
