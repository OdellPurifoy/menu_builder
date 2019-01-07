Rails.application.routes.draw do
  resources :weekly_menus
  resources :meals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'meals#index'
end
