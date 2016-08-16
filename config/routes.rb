Rails.application.routes.draw do
  root 'page#index'

  devise_scope :user do
    post 'sign_in', to: 'users/sessions#create', as: 'sign_in'
    delete 'sign_out', to: 'users/sessions#destroy', as: 'sign_out'
  end

end
