Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :potatos
      resources :comments
      resources :shows
      resources :users
      post "/potatoes/new", to:"potatos#new"
      get "/bookmarks", to: "bookmarks#index"
      post "/comments/get", to: "comments#get"
      post "/comments/new", to: "comments#new"
      post "/bookmarks/get", to: "bookmarks#get"
      post "/bookmarks/new", to: "bookmarks#new"
      post "/login", to: "auth#create"
      get "/profile", to: "users#profile"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
