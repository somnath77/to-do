Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users , only: [:index , :show] do
    member do
      get :posts_handler, as: strings
    end
  end

  namespace :user do
    resources :tasks
  end


end
