HackCA::Application.routes.draw do

  root to: 'events#index'
  
  resources :tweets, only: [ :index ]
  resources :webapps, except: [ :index ]
  resources :events, only: [ :index, :show ]
  resources :users, except: [ :destroy ]
  resources :sessions, only: [ :new, :create ]
  
  get 'session' => 'sessions#destroy', method: :get

end
