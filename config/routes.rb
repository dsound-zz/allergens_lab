Rails.application.routes.draw do

resources :recipes


get '/recipes', to: 'recipes#index' #get url /receipes and route to recipes controller with actions in method index

get '/recipes/:id', to:  'recipes#show', as: "recipe" #get url /recipes/  with id  and route to recipes controller with action in method show and custom url helper 'recipe'

get '/recipes/new', to:  'recipes#new', as: "new_recipe" #get url /recipes/new and route to recipes controller with action in method new and custom url helper 'new_recipe'

post '/recipes/', to: 'recipes#create', as: "create_recipe" #post url /recipes/ and route to recipes controller with action to method create

get '/recipes/:id/edit', to: 'recipes#edit' #get url /recipes/edit with :id and route to recipes controller with action edit

patch '/recipes/:id', to: 'recipes#update' #post url /recipes/ and route to recipes controller with action to method update



get '/users/', to: "users#index"
get '/users/:id', to: 'users#show'
post '/users/', to: "users#create"
delete 'users/:id', to: 'users#destroy', as: "delete_user"

get '/ingredients', to: 'ingredients#index'
get '/ingredients/:id', to: 'ingredients#show', as: "ingredient"
get '/ingredients/new', to: 'ingredients#new'
post '/ingredients/', to: 'ingredients#create', as: "create"
patch '/ingredients/', to: 'ingredients#update'


end
