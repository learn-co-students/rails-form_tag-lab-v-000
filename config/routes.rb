Rails.application.routes.draw do
  root :to => "static#index"
  resources :students, only: [:index, :new, :create]
  get '/student/:id', to: 'students#show', as: 'student'
end
