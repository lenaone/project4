Rails.application.routes.draw do
  
  post '/movies/search_display', to: 'movies#search'
  get '/movies/search_display', to: 'movies#search_display'
  get '/movies/index', to: 'movies#index'
  get '/movies/upcoming', to: 'movies#upcoming'
  get '/movies/popular', to: 'movies#popular'
  get '/movies/:id', to: 'movies#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index'
  get '/users/sign_up', to: 'users#sign_up'
  post '/users/sign_up', to: 'users#create'
  get '/users/login', to: 'users#login'
  post '/users/login', to: 'users#sign_in'
  get '/users/logout', to: 'users#logout'
end
