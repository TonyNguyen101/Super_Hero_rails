Rails.application.routes.draw do
  root 'teams#index'

  get '/login', to: "sessions#login", as: "login"

  post '/login', to: "sessions#attempt_login"

  get '/signup', to: "sessions#signup", as: "signup"

  post '/signup', to: "sessions#create"

  delete '/logout', to: "sessions#logout", as: "logout"

  resources :teams

  resources :superheros

#           root GET    /                              teams#index
#          login GET    /login(.:format)               sessions#login
#                POST   /login(.:format)               sessions#attempt_login
#         signup GET    /signup(.:format)              sessions#signup
#                POST   /signup(.:format)              sessions#create
#         logout DELETE /logout(.:format)              sessions#logout
#          teams GET    /teams(.:format)               teams#index
#                POST   /teams(.:format)               teams#create
#       new_team GET    /teams/new(.:format)           teams#new
#      edit_team GET    /teams/:id/edit(.:format)      teams#edit
#           team GET    /teams/:id(.:format)           teams#show
#                PATCH  /teams/:id(.:format)           teams#update
#                PUT    /teams/:id(.:format)           teams#update
#                DELETE /teams/:id(.:format)           teams#destroy
#     superheros GET    /superheros(.:format)          superheros#index
#                POST   /superheros(.:format)          superheros#create
#  new_superhero GET    /superheros/new(.:format)      superheros#new
# edit_superhero GET    /superheros/:id/edit(.:format) superheros#edit
#      superhero GET    /superheros/:id(.:format)      superheros#show
#                PATCH  /superheros/:id(.:format)      superheros#update
#                PUT    /superheros/:id(.:format)      superheros#update
#                DELETE /superheros/:id(.:format)      superheros#destroy

end
