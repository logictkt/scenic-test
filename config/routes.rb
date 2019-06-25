Rails.application.routes.draw do
  root to: 'users#index'
  resources :users do
    resource :notification_setting, only: :update
  end

  resources :active_users, only: :index
  resources :deleted_users, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
