SharedBlog::Application.routes.draw do

  resources :comments

  resources :articles

  resources :users
end
