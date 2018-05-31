Rails.application.routes.draw do
  root 'staticpages#home'
 
  resources :departments do
    resources :items
  end

  scope 'items/:item_id', as: 'item' do
    resources :comments, only: [:new, :create]
  end

end
