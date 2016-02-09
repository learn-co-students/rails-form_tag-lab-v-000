Rails.application.routes.draw do
  # resources :students, only: [:index, :new]
  resources :students

  # get '/student/:id', to: 'students#show', as: 'student'
end
