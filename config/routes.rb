Rails.application.routes.draw do
  resources :students, only: [:index,:new,:show,:create]
end
