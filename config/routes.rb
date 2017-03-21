Rails.application.routes.draw do

  # WEEKS RESOURCES
  get '/weeks/', to: 'weeks#index', as: 'weeks', action: 'weeks'
  post '/weeks/create', to: 'weeks#create', as: 'create_week', action: 'create_week'
  delete '/weeks/:id', to: 'weeks#destroy', as: 'week', action: 'week'

  # EXERCISES RESOURCES
  get '/exercises/:id', to: 'exercises#show', as: 'exercise', action: 'exercise'
  patch '/exercises/:id', to: 'exercises#update', as: '', action: ''
  put '/exercises/:id', to: 'exercises#update', as: '', action: ''

end
