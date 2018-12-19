Rails.application.routes.draw do
  get 'users/admin'
  post 'users/admin/:id', to: 'users#def_admin', as: 'def_admin'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    sessions: 'users/sessions'
  }
  get 'histories/mines'
  resources :histories
 
  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end