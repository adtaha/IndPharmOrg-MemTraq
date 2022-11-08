Rails.application.routes.draw do
    root to: 'dashboards#show'
    devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
    devise_scope :admin do
      get 'admins/sign_in', to: 'admins/sessions#new', as: :new_admin_session
      get 'admins/sign_out', to: 'admins/sessions#destroy', as: :destroy_admin_session
    end
  resources :speakers
  resources :organizations
  resources :member_orgs
  resources :current_members
  # root 'current_members#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # get 'auth/:provider/callback' => 'sessions#omniauth'
  # get 'login' => 'current_members#index'
end

# # Routes for Google authentication
# get 'auth/:provider/callback' => 'sessions#omniauth'
# get 'auth/failure', to: redirect('/')