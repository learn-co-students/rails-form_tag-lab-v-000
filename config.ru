# This file is used by Rack-based servers to start the application.
Rails.application.routes.draw do
  resources :students, only: [:index, :show, :create, :new]
end
