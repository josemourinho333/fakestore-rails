Rails.application.routes.draw do
  root to: 'home#index'

  get 'home/show', to: 'home#show'
  get 'shop', to: 'shop#all'
  get 'shop/filter', to: 'shop#filter'

end
