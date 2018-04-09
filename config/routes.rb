# Rails.application.routes.draw do
#   resources :students, only: :index
#   get '/students/:id', to: 'students#show', as: 'student'
# end

Rails.application.routes.draw do
  resources :students, only: [:index, :show, :create, :new]
end
