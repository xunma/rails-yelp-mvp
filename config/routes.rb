Rails.application.routes.draw do
  resources :restaurants, except: [:edit, :update, :delete] do
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
