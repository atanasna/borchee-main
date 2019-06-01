Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    #Huts
    get 'huts', to: 'huts#index'
    get 'huts/new', to: 'huts#new'
    post 'huts', to: 'huts#create'
    get 'huts/:id', to: 'huts#show'
    get 'huts/:id/edit', to: 'huts#edit'
    post 'huts/:id', to: 'huts#update'
    delete 'huts/:id', to: 'huts#destroy'

    #Campsites
    get 'campsites', to: 'campsites#index'
    get 'campsites/new', to: 'campsites#new'
    post 'campsites', to: 'campsites#create'
    get 'campsites/:id', to: 'campsites#show'

    #Caves
    get 'caves', to: 'caves#index'
    get 'caves/new', to: 'caves#new'
    post 'caves', to: 'caves#create'
    get 'caves/:id', to: 'caves#show'

    #Waterfalls
    get 'waterfalls', to: 'waterfalls#index'
    get 'waterfalls/new', to: 'waterfalls#new'
    post 'waterfalls', to: 'waterfalls#create'
    get 'waterfalls/:id', to: 'waterfalls#show'

    #Paths
    get 'paths', to: 'paths#index'
    get 'paths/new', to: 'paths#new'
    post 'paths', to: 'paths#create'
    get 'paths/:id', to: 'paths#show'
end

