Rails.application.routes.draw do
  root 'billboards#home'

  get 'billboards/home', to: 'billboards#home'
  
  resources :artists do
    resources :songs
  end
  resources :billboards
  resources :rankings
end
