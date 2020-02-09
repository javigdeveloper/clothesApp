Rails.application.routes.draw do
  get "/", to: "garments#index"
  resources :garments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
