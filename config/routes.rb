Rails.application.routes.draw do
  resources :school_classes, only: [:show, :new, :create, :edit, :update]
  resources :students, only: [:show, :new, :create, :edit, :update]
  # get '/student/:id', to: 'students#show', as: 'student'
end
