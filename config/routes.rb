Rails.application.routes.draw do
  
  namespace :api do
    get 'cars', to: 'cars#index'
    get 'cars/:id', to: 'cars#show'
    post 'cars', to: 'cars#create'
    put 'cars/:id', to: 'cars#update'
    delete 'cars/:id', to: 'cars#destroy'
    
  end
end
