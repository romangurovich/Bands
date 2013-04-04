Musicapp::Application.routes.draw do

  resources :artists
  resources :bands do
    resources :albums, only: [:new, :create]
  end

  resources :albums do
    resources :songs, only: [:new, :create]
  end

  resources :songs
  resources :tracks


end
