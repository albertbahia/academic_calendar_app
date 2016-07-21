Rails.application.routes.draw do
  root to: 'application#index'
  resources :events
  resources :cohorts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
