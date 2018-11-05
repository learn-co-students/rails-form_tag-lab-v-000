Rails.application.routes.draw do
  resources :students, only: [:index, :new, :show]
  post '/students/new', to: 'students#create'
end
