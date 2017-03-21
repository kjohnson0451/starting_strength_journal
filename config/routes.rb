Rails.application.routes.draw do

  # WEEKS RESOURCES
  get '/weeks/', to: 'weeks#index', as: 'weeks'
  post '/weeks/create', to: 'weeks#create', as: 'create_week'
  delete '/weeks/:id', to: 'weeks#destroy', as: 'week'

  # EXERCISES RESOURCES
  patch '/exercises/:id', to: 'exercises#update', as: 'exercise'
  put '/exercises/:id', to: 'exercises#update'

end
