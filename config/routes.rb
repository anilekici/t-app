Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'income#new'
  resources :income only: [:new, :create, :edit, :show, :update]
end
