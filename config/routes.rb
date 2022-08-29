Rails.application.routes.draw do
  namespace :buyers do
    resources :dashboard, only: [:index]
  end

  namespace :sellers do
    resources :dashboard, only: [:index]
    namespace :dashboard do 
      resources :availability_hours
      resources :services
    end
  end
  
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  devise_for :admins, path: '/admin', controllers: {
    sessions: 'admin/sessions'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # constraints subdomain: /api*/ do
  #   resources :home
  # end
end
