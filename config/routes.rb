Rails.application.routes.draw do
  resources :contacts do
    resources :addresses, :phone_numbers
  end
  root to: 'welcome#index'
end
