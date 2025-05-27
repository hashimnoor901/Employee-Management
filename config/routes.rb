Rails.application.routes.draw do
  resources :employees
  resources :documents
  get "up" => "rails/health#show", as: :rails_health_check
  get "home/index"
  root "employees#index"
end
