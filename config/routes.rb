Rails.application.routes.draw do
  root to: 'home#index'

  get 'home/show', to: 'home#show'

  
end
