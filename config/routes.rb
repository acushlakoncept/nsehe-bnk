Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'dashboard#index'
  get 'deposit', to: 'dashboard#deposit'
  get 'withdraw', to: 'dashboard#withdraw'
  get 'transfer', to: 'dashboard#transfer'
  get 'transaction', to: 'dashboard#transaction'
end
