Rails.application.routes.draw do

  # WEEKS RESOURCES
  get 'weeks', to: 'weeks#index'
  post 'create_week', to: 'weeks#create', path: '/weeks/create'
  delete 'week', to: 'weeks#destroy', path: '/weeks/:id'

end
