Rails.application.routes.draw do

  get '/', to: 'welcome#welcome'

  namespace :api do
    namespace :v1 do
      get '/forecast', to: 'forecast#index'
      get '/backgrounds', to: 'backgrounds#index'
      get '/book-search', to: 'booksearch#index'
      post '/users', to: 'users#create'
      post '/sessions', to: 'sessions#create'
      post '/road_trip', to: 'road_trip#index'
    end
  end
end
