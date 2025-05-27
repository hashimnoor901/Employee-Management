Rails.application.routes.draw do
  resources :employees
  get "up" => "rails/health#show", as: :rails_health_check
  get "home/index"
  root "home#index"
end
