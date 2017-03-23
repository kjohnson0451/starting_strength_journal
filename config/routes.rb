Rails.application.routes.draw do

  # ROUTINE RESOURCES
  get '/routine/', to: 'routines#show', as: 'routine'

  # WEEKS RESOURCES
  post '/weeks/create', to: 'weeks#create', as: 'create_week'
  delete '/weeks/:id', to: 'weeks#destroy', as: 'week'

  # EXERCISES RESOURCES
  patch '/exercises/:id', to: 'exercises#update', as: 'exercise'
  put '/exercises/:id', to: 'exercises#update'

  root 'routines#show'
end
