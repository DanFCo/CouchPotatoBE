Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :potatos
      resources :comments
      resources :shows
      resources :users
      resources :bookmarks
      post "/shows/search", to: "shows#search"
      post "/potatos/find_pots", to: "potatos#find_pots"
      post "/potatoes/new", to:"potatos#new"
      get "/bookmarks", to: "bookmarks#index"
      post "/comments/get", to: "comments#get"
      post "/comments/new", to: "comments#new"
      post "/bookmarks/get", to: "bookmarks#get"
      post "/bookmarks/new", to: "bookmarks#new"
      post "/login", to: "auth#create"
      get "/profile", to: "users#profile"
      get "/auto", to: "auth#auto_login"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
