Rails.application.routes.draw do
  resources :speakers
  resources :organizations
  resources :member_orgs
  resources :current_members
  root 'current_members#index'
  get 'auth/:provider/callback' => 'sessions#omniauth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# # Routes for Google authentication
# get 'auth/:provider/callback' => 'sessions#omniauth'
# get 'auth/failure', to: redirect('/')