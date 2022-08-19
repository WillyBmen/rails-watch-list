Rails.application.routes.draw do
  resources :lists, only: %i[index show create new] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
end
