Rails.application.routes.draw do
  root 'rooms#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  get 'rooms/index'
  get "/rooms" => "rooms#index"
  post "/rooms" => "rooms#create"
  post "/rooms/new" => "rooms#create"
  get "/rooms/new", to: "rooms#new", as: "new_room"
  get "/rooms/:id", to: "rooms#show", as: "room"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
