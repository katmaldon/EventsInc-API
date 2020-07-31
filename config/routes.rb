Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :favorites
resources :user_events
resources :events
resources :todos

namespace :api do
    namespace :v1 do



        post "/signup", to: "users#create"
        post "/login", to: "auth#login"
        # get '/profile', to: 'users#profile'


        get "/auto_login", to: "auth#auto_login"

        end
      end

  end
