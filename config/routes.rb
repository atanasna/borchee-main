Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    #Huts
    get 'huts', to: 'huts#index'
    post 'huts', to: 'huts#create'
    get 'huts/:id', to: 'huts#show'
    post 'huts/:id', to: 'huts#update'
    delete 'huts/:id', to: 'huts#destroy'

    #Campsites
    get 'campsites', to: 'campsites#index'
    post 'campsites', to: 'campsites#create'
    get 'campsites/:id', to: 'campsites#show'
    post 'campsites/:id', to: 'campsites#update'
    delete 'campsites/:id', to: 'campsites#destroy'

    #Caves
    get 'caves', to: 'caves#index'
    post 'caves', to: 'caves#create'
    get 'caves/:id', to: 'caves#show'
    post 'caves/:id', to: 'caves#update'
    delete 'caves/:id', to: 'caves#destroy'

    #Waterfalls
    get 'waterfalls', to: 'waterfalls#index'
    post 'waterfalls', to: 'waterfalls#create'
    get 'waterfalls/:id', to: 'waterfalls#show'
    post 'waterfalls/:id', to: 'waterfalls#update'
    delete 'waterfalls/:id', to: 'waterfalls#destroy'

    #Paths
    get 'paths', to: 'paths#index'
    post 'paths', to: 'paths#create'
    get 'paths/:id', to: 'paths#show'
    post 'paths/:id', to: 'paths#update'
    delete 'paths/:id', to: 'paths#destroy'
end

