Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # READ
  get 'pets', to: 'pets#index', as: :pets
  get 'pets/new', to: 'pets#new', as: :new_pet
  get 'pets/:id', to: 'pets#show', as: :pet
  delete 'pets/:id', to: 'pets#destroy'
  post 'pets', to: 'pets#create'
  get 'pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch 'pets/:id', to: 'pets#update'
end
