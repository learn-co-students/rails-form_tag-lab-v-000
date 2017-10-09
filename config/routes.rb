Rails.application.routes.draw do
  resources :students, only: [:index , :new, :create]
  # Accessing this path dynamically, because can't incude the :id as a value
  get '/student/:id', to: 'students#show', as: 'student'
end
