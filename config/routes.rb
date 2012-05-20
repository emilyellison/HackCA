HackCA::Application.routes.draw do

  root to: 'events#index'
  
  resources :webapps, except: [ :edit, :update, :index ]
  resources :events, only: [ :index, :show ]
  resources :users, only: [ :show, :new, :create, :index ]
  resources :sessions, only: [ :new, :create ]
  
  get 'session' => 'sessions#destroy', method: :get

end
