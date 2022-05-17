Rails.application.routes.draw do
  # Create a task => get & post
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # Update a task => get & patch
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Read all tasks
  get '/tasks', to: 'tasks#index', as: :index

  # Read one task => :id / show
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Delete a task => :id
  delete '/tasks/:id', to: 'tasks#destroy'
end
