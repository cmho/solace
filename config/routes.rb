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
    get '/game/:id/downtimes', to: 'games#downtime_actions', as: 'game_downtimes'
    get '/game/:id/downtimes/:action_id', to: 'games#downtime_show', as: 'show_game_downtime'
    post '/game/:id/downtimes/:action_id', to: 'games#downtime_update', as: 'edit_game_downtime'

    resources :merits
  end

  namespace :api do

  end
end
