Rails.application.routes.draw do
  root 'questions#index'

  resources :questions
  resources :users, only: %i[new create]
  resource :session, only: %i[new create destroy]
end
