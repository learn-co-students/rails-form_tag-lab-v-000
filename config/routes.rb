Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/students/:id', to: 'students#show', as: 'student'
end


# // ♥ rake routes
#      Prefix Verb URI Pattern             Controller#Action
#    students GET  /students(.:format)     students#index
#             POST /students(.:format)     students#create
# new_student GET  /students/new(.:format) students#new
#     student GET  /students/:id(.:format) students#show
