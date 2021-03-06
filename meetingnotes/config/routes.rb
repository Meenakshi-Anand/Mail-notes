Rails.application.routes.draw do

  get 'auth/:provider/callback', to: 'sessions#create',format:false
  get 'auth/failure', to: redirect('/'),format:false
  get '/signout', to: 'sessions#destroy', as: 'signout'
  get '/redirect', to: 'calendar#redirect', as: 'redirect'
  get '/callback', to: 'calendar#callback', as: 'callback'
  resources :sessions, only: [:create, :destroy]

  get '/calendars', to: 'calendar#calendars', as: 'calendars'
  get '/events/:calendar_id', to: 'calendar#events', as: 'events', calendar_id: /[^\/]+/

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "static_pages#root"
end
