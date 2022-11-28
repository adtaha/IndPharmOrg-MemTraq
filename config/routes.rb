Rails.application.routes.draw do
  root to: 'dashboards#home'
  devise_for :current_members, controllers: { omniauth_callbacks: 'current_members/omniauth_callbacks' }
  devise_scope :current_member do
    get 'current_members/sign_in', to: 'current_members/sessions#new', as: :new_current_member_session
    get 'current_members/sign_out', to: 'current_members/sessions#destroy', as: :destroy_current_member_session
  end
  get 'home', to: 'dashboards#home'
  get 'help', to: 'help#index'
  resources :speakers
  resources :organizations
  resources :member_orgs
  resources :current_members
  get '/jotform' => 'jotform#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
