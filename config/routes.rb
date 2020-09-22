Rails.application.routes.draw do
  get 'welcome/index'
  resources :contacts do
    resources :addresses, :phone_numbers, :emails
  end
  root to: 'welcome#index'
end
