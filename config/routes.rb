Rails.application.routes.draw do
  resources :searchrepos, only: [:index]

  # set index as root homepage
  root 'searchrepos#index'
  
end
