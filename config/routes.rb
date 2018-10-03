Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :characters
  root to: 'characters#index'

  resources :game do
    resource :downtime_actions
  end

  namespace :admin do
    resources :merits
    resources :equipment
    resources :creature_types
  end

  namespace :storytellers do
    resources :games
  end

  namespace :api do

  end
end
