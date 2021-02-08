Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'income#new'
  post '/:id', to: 'income#create', as: :create_income
  patch '/:id', to: 'income#update', as: :update_income
  get '/:id', to: 'income#show', as: :income
  get '/:id/edit', to: 'income#edit', as: :edit_income
end
