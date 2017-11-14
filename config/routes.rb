Rails.application.routes.draw do
 root 'static_pages#home'
 get 'auth/facebook', as: "login"
 get 'auth/facebook/callback', to: 'sessions#create'
 get 'logout'   => 'sessions#destroy', as: "logout"
end