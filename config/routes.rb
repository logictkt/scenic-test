Rails.application.routes.draw do
  root to: 'users#index'
  resources :users do
    resource :notification_setting, only: :update
  end

  resources :active_users, only: :index
  resources :deleted_users, only: :index

  resources :notice_active_users, only: :index
  resources :notice_disabled_users, only: :index
end
