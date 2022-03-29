Rails.application.routes.draw do

  resources therapists only: [:in]
  get 'therapists/index'
  get 'therapists/show'
  get 'appointments/index'
  get 'appointments/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
