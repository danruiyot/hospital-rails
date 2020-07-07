Rails.application.routes.draw do
	
  root 'application#welcome'
  resources :notices
  resources :wards
  resources :admissions
  resources :diagnoses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
