Rails.application.routes.draw do
	
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  resources :users
  get 'home/index'
  root 'application#welcome'
  resources :notices
  resources :wards
  resources :admissions
  resources :diagnoses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html\
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
