Rails.application.routes.draw do
  root 'calculator#index'
  post '/calculate', to: 'calculator#calculate'

  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
  end
end
