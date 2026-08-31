Rails.application.routes.draw do
  resources :wishes

  get "up" => "rails/health#show", as: :rails_health_check
end