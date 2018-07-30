Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]

  get '/students/:id/show', to: 'students#show', as: 'student'
end
