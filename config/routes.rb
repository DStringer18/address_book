Rails.application.routes.draw do
  devise_for :users
  get 'contacts/index'
  resources :contacts do
    resources :addresses, :phone_numbers, :emails
  end
  root to: 'contacts#index'
end
