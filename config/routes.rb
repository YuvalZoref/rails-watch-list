Rails.application.routes.draw do
  root to: 'lists#index'

  resources :lists, only: [ :index, :show, :new, :create ] do
    resources :bookmarks, only: [ :new, :create ]
  end
  resources :bookmarks, only: :destroy
end


# get '/lists', to: 'lists#index'
# get '/lists/:id', to: 'lists#show'
# get '/lists/new', to: 'lists#new'
# post '/lists', to: 'lists#create'

# get '/lists/:id/bookmarks/new', to: 'reviews#new'
# post '/lists/:id/bookmarks', to: 'reviews#create'
# delete '/bookmarks/:id'
