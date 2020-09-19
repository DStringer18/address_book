Rails.application.routes.draw do
  resources :contacts do
    resources :addresses
  end
  root to: 'welcome#index'
end
