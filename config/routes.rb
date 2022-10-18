Rails.application.routes.draw do
  resources :speakers
  resources :speakers
  resources :organizations
  resources :member_orgs
  resources :current_members
  root 'current_members#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
