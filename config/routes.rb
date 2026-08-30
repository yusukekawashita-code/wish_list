Rails.application.routes.draw do
  get "wishes", to: "wishes#index"
  get "wishes/new", to: "wishes#new"
  post "wishes", to: "wishes#create"

  get "up" => "rails/health#show", as: :rails_health_check
end