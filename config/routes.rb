Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'publique#accueil'
  get '/recette/:id', to: 'recette#show_id'
  get '/mesrecettes', to: 'recette#user'
  namespace :admin do
    root 'user#accueil'
    #get 'user', to: 'user#accueil'
    get '/recette', to: 'recette#show_list'
    get '/recette/:id', to: 'recette#show_id'
  end
end
