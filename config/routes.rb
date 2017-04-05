Rails.application.routes.draw do

  devise_for :users
  # ROUTINE RESOURCES
  get '/routine/', to: 'routines#show', as: 'routine'
  patch '/routine/', to: 'routines#update'
  put '/routine/', to: 'routines#update'

  # WEEKS RESOURCES
  post '/weeks/create', to: 'weeks#create', as: 'create_week'
  delete '/weeks/:id', to: 'weeks#destroy', as: 'week'

  root 'routines#show'
end
