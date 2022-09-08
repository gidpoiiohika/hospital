Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :doctors, controllers: { sessions: 'sessions' }
  devise_for :patients, controllers: { sessions: 'sessions' }

  resources :categories, only: :index
  resources :appointments, only: [:index, :create]
  resources :recommendations, only: [:index, :new, :create]
  
  root "pages#home"
  
  get '/page_doctor',         to: 'pages#page_doctor'
  get '/profile_doctor/:id',  to: 'pages#profile_doctor',  as: 'profile_doctor'
  get '/profile_patient/:id', to: 'pages#profile_patient', as: 'profile_patient'
end
