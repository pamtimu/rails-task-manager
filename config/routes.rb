Rails.application.routes.draw do

  # Defines the root path route ("/")
  # root "posts#index"
  get "/tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new", as: :new_task
  post "/tasks", to: "tasks#create"
  get "tasks/:id", to: "tasks#show", as: :task
  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy", as: :see_other
end
