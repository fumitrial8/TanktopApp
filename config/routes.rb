Rails.application.routes.draw do
  get "users/new" => "users#new"
  get "users/index" => "users#index"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  get "users/login_form" => "users#login_form"

  post "users/login" => "users#login"
  post "users/logout" => "users#logout"
  post "users/create" => "users#create"
  get "users/destroy_form" => "users#destroy_form"
  post "users/destroy" => "users#destroy"
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#id"
  get "posts/:id/edit" => "posts#edit"
  get "posts/:id/destroy" => "posts#destroy"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  get "posts/:id/my_posts" => "posts#my_posts"
  post "posts/create" => "posts#create"
  post "posts/:id/update" =>"posts#update"
  post "posts/:id/like" => "likes#like"
  post "posts/:id/unlike" => "likes#unlike"
  get '/' => 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/about" => "home#about"
end
