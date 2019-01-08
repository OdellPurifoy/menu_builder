Rails.application.routes.draw do
  resources :weekly_menus do
    member do
      get :copy
      put :copy
      post :copy
      delete :copy
    end
  end

  resources :meals

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'weekly_menus#index'
end
