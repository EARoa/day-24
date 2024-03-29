Rails.application.routes.draw do
  get 'profiles/show'

  root 'thoughts#index'
  post "thoughts" => "thoughts#post", as: "post_thought"

  get "sessions/new" => "sessions#new", as: "sign_in"
  post "sessions" => "sessions#create"
  delete "sessions" => "sessions#signout", as: "sign_out"
  get "signup" => "sessions#signup", as: :signup
  post "signup" => "sessions#create_user", as: :create_user

  get "users/:username" => "profiles#show", as: "profile"

end
