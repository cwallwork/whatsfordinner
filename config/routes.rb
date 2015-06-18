Rails.application.routes.draw do
  get 'signup' => 'users#new'
  resources :users  

  resources :home, only: [:index]

  root :to => redirect('/home')


end
