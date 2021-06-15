Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resource :users, only: [:create]
      get '/forecast', to: 'forecast#index'
      get '/backgrounds', to: 'backgrounds#index'
      get '/book-search', to: 'booksearch#index'
    end
  end
end
