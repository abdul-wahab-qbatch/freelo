Rails.application.routes.draw do
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  devise_for :admins, path: '/admin', controllers: {
    sessions: 'admin/sessions'
  }
  devise_for :sellers, controllers: {
    sessions: 'sellers/sessions',
    registrations: 'sellers/registrations'
  }
  devise_for :buyers, controllers: {
    sessions: 'buyers/sessions',
    registrations: 'buyers/registrations'
  }
end
