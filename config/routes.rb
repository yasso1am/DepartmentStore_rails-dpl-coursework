Rails.application.routes.draw do
  root 'staticpages#home'
 
  resources :departments do
    resources :items
  end

end
