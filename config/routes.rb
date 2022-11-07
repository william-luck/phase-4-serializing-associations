Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  get '/movies/:id/summary', to: 'movies#summary'
  get '/movie_summaries', to: 'movies#summaries'

  resources :directors, only: [:index, :show]
  # Don't need the reviews resource, since we only accessing the reviews as nested of movies.... Never will be a time that we want the list of all reviews. 
  # resources :reviews, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
