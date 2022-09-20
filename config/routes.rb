Rails.application.routes.draw do
  resources :speaker_lists
  resources :organization_lists
  resources :member_lists
  resources :speakers
  resources :organizations
  resources :alumnis
  resources :administrators
  resources :curr_members
  root 'curr_members#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
