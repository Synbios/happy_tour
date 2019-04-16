Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#home"

  get '/contact', to: "home#contact"
  get '/about', to: "home#about"
  get '/customize', to: "home#customize"
  get '/airfares_and_hotels', to: "home#airfares_and_hotels"

  get '/article1', to: "home#article1"
  get '/article2', to: "home#article2"
  get '/article3', to: "home#article3"
  get '/article4', to: "home#article4"
  get '/article5', to: "home#article5"
  get '/article6', to: "home#article6"

  resources :messages, only: [:create]

  # admin
  devise_for :users, path: "admin", path_names: { sign_in: 'users/sign_in', sign_out: 'users/sign_out' }

  resources :products, only:[:show, :index]
  resources :locations, only:[:show]

  namespace :admin do |admin|
    root "master#dashboard"
    get 'dashboard', to: "master#dashboard"

    get 'products_page', to: "master#products"
    get 'locations_page', to: "master#locations"
    get 'companies_page', to: "master#companies"
    get 'books_page', to: "master#books"

    resources :products do
      resources :product_slides, shallow: true
      resources :product_options, shallow: true
      resources :product_dates, shallow: true
      resources :product_points, shallow: true
    end

    resources :locations do
      resources :location_slides, shallow: true
    end
  end
end
