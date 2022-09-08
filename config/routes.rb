Rails.application.routes.draw do
  resources :recommendations
  resources :appointments
  resources :categories
  get 'pages/home'
  get 'pages/profile_doctor'
  get 'pages/profile_patient'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :doctors
  devise_for :patients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
