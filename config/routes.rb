Rails.application.routes.draw do
  get 'contacts/index'
  resources :contacts do
    resources :addresses, :phone_numbers, :emails
  end
  root to: 'contacts#index'
end
