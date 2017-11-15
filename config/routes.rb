Rails.application.routes.draw do
 root 'static_pages#home'
 get 'auth/facebook', as: "login"
 get 'auth/facebook/callback', to: 'sessions#create'
 get 'logout'   => 'sessions#destroy', as: "logout"
 get 'users', to: "users#index", as: "users"
 get 'users/:id', to: "users#show", as: "user" 
 get 'users/:id/edit', to: "users#edit", as: "edit_user"
 patch 'users/:id', to: "users#update"
 get 'newsfeed', to: "posts#index", as: "posts"
  post 'newsfeed', to: "posts#create"
  post 'users/:id/post', to: "posts#create", as: "receive_post"
 delete 'posts/:id', to: "posts#destroy", as: "delete_post"
end