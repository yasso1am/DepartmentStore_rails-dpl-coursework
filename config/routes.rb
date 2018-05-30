Rails.application.routes.draw do
  get 'items/index'
  get 'items/show'
  get 'items/edit'
  get 'items/new'
  root 'departments#index'

  resources :departments do
    resources :items
  end

end
