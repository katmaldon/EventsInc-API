Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :favorites
    resources :user_events
    resources :events
    resources :todos
    resources :users, only: [:create]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
end
