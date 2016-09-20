Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  #  url             controller + action      overiding the named route helpers with :as
  get '/student/:id', to: 'students#show', as: 'student'
end
