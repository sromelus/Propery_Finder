Rails.application.routes.draw do
  root to: 'public#main'
#  unauthenticated do
#    root to: 'public#main'
#  end
 
#  authenticated do
#    root to: 'dashboard#index', as: "dashboard"
#  end

  get "/dashboard" => 'dashboard#index'
  get 'dashboard/properties'
  get 'dashboard/reports'
  resources :properties
  devise_for :accounts
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
