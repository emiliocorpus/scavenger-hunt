Rails.application.routes.draw do
  root 'page#index'
  get 'users/:id' => 'page#show', as: 'user_profile'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
end
