Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "lists", to: "lists#index"
  # get "lists/:id", to: "lists#show"
  # get "lists/new", to: "lists#new"
  # post "lists", to: "lists#create"

  # get "lists/:id/bookmarks/new", to: "lists#edit"
  # patch "lists/:id/bookmarks", to: "lists#update"
  # delete "bookmarks/:id", to: "lists#destroy"
  # root to: "list#index"
  resources :movies

  resources :lists do 
    resources :bookmarks, only: [:create, :new]
  end
  resources :bookmarks, only: [:destroy]
end
