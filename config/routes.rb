Rails.application.routes.draw do
  root to: 'movies#new_search', as: :home
  post '/', to: 'movies#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
