Rails.application.routes.draw do
  resources :searchrepos, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/search' => 'searchrepos#search'


  root 'searchrepos#index'
  
end
